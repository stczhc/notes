{-# LANGUAGE ViewPatterns, ScopedTypeVariables, TupleSections #-}

import qualified Text.Printf as TP (printf)
import qualified Data.List as L (intercalate)

import Data.Array.Repa (Z(Z), (:.)((:.)), (!), (-^), (+^), (*^), All(All), Any(Any), extent, size)
import qualified Data.Array.Repa as RP (fromFunction, fromListUnboxed, Array, U, D, DIM1, DIM2, DIM4, map)
import qualified Data.Array.Repa as RP (sumAllS, slice, delay, computeS, toList)
import qualified Data.Array.Repa.Repr.Vector as RP (V, fromListVector)
import Data.Complex (Complex((:+)), realPart, imagPart)
import Data.Bits (bit)

pdim1 :: RP.Array RP.U RP.DIM1 (Complex Double) -> String
pdim1 mat = pt ++ "\n" where
    (Z :. n) = extent mat
    pt = concat [ let (xr :+ xi) = mat ! (Z :. i) in TP.printf "%14.4f +I %8.4f" xr xi | i <- [0 .. n - 1] ]

pdim2 :: RP.Array RP.U RP.DIM2 (Complex Double) -> String
pdim2 mat = L.intercalate "\n" [ pt i | i <- [0 .. m - 1]] ++ "\n\n" where
    (Z :. m :. n) = extent mat
    pt i = concat [ let (xr :+ xi) = mat ! (Z :. i :. j) in TP.printf "%14.4f +I %8.4f" xr xi | j <- [0 .. n - 1] ]

identity :: RP.Array RP.U RP.DIM2 (Complex Double)
identity = RP.fromListUnboxed (Z :. 2 :. 2) [1, 0, 0, 1]

sigmaX :: RP.Array RP.U RP.DIM2 (Complex Double)
sigmaX = RP.fromListUnboxed (Z :. 2 :. 2) [0, 1, 1, 0]

sigmaY :: RP.Array RP.U RP.DIM2 (Complex Double)
sigmaY = RP.fromListUnboxed (Z :. 2 :. 2) [0, 0 :+ (-1), 0 :+ 1, 0]

sigmaZ :: RP.Array RP.U RP.DIM2 (Complex Double)
sigmaZ = RP.fromListUnboxed (Z :. 2 :. 2) [1, 0, 0, -1]

-- | Tensor product.
kron :: RP.Array RP.U RP.DIM2 (Complex Double)
     -> RP.Array RP.U RP.DIM2 (Complex Double)
     -> RP.Array RP.U RP.DIM2 (Complex Double)
kron mata matb = reduceBlock . RP.computeS $ RP.fromFunction (extent mata) iter where
    iter i = RP.computeS $ RP.map (* (mata ! i)) matb :: RP.Array RP.U RP.DIM2 (Complex Double)

-- | Heisenberg Hamiltonian
hamil :: RP.Array RP.U RP.DIM2 (Complex Double)
hamil = RP.computeS $ RP.map (* 0.25) (((kron sigmaX identity) `mmult` (kron identity sigmaX))
    +^ ((kron sigmaY identity) `mmult` (kron identity sigmaY))
    +^ ((kron sigmaZ identity) `mmult` (kron identity sigmaZ)))

-- | S^2 Operator
s2 :: RP.Array RP.U RP.DIM2 (Complex Double)
s2 = RP.computeS $ RP.map (* 0.25) (
    square (RP.computeS $ kron sigmaX identity +^ kron identity sigmaX)
    +^ square (RP.computeS $ kron sigmaY identity +^ kron identity sigmaY)
    +^ square (RP.computeS $ kron sigmaZ identity +^ kron identity sigmaZ))

-- | Square of a matrix
square :: RP.Array RP.U RP.DIM2 (Complex Double) -> RP.Array RP.U RP.DIM2 (Complex Double)
square mat = mmult mat mat

-- | Matrix Matrix Multiplication
mmult :: RP.Array RP.U RP.DIM2 (Complex Double)
      -> RP.Array RP.U RP.DIM2 (Complex Double)
      -> RP.Array RP.U RP.DIM2 (Complex Double)
mmult mata matb = RP.computeS $ RP.fromFunction (Z :. n :. m) iter where
    (Z :. n :. k) = extent mata
    (Z :. kp :. m) = extent matb
    iter :: RP.DIM2 -> Complex Double
    iter (Z :. i :. j) = RP.sumAllS $ RP.slice mata (Any :. i :. All) *^ RP.slice matb (Any :. All :. j)

-- | Matrix Vector Multiplication
mvmult :: RP.Array RP.U RP.DIM2 (Complex Double)
       -> RP.Array RP.U RP.DIM1 (Complex Double)
       -> RP.Array RP.U RP.DIM1 (Complex Double)
mvmult mat vec = RP.computeS $ RP.fromFunction (Z :. n) iter where
    (Z :. n :. m) = extent mat
    iter :: RP.DIM1 -> Complex Double
    iter (Z :. i) = RP.sumAllS $ RP.slice mat (Any :. i :. All) *^ vec

-- | Vector Vector Dot Product
dot :: RP.Array RP.U RP.DIM1 (Complex Double) -> RP.Array RP.U RP.DIM1 (Complex Double) -> Complex Double
dot veca vecb = RP.sumAllS $ veca *^ vecb

-- | Reduce blocked matrix to regular matrix.
reduceBlock :: RP.Array RP.V RP.DIM2 (RP.Array RP.U RP.DIM2 (Complex Double)) -- ^ matrix of blocks
            -> RP.Array RP.U RP.DIM2 (Complex Double)
reduceBlock mat = RP.computeS $ RP.fromFunction (Z :. nl :. nl) iter where
    f :: Int -> RP.Array RP.U RP.DIM2 (Complex Double) -> [(Int, Int)]
    f i block = let (Z :. _ :. n) = extent block in map (i, ) [0..n - 1]
    idx = let l = concat (zipWith f [0..] (RP.toList (RP.slice mat (Any :. (0 :: Int) :. All))))
        in RP.fromListUnboxed (Z :. (length l)) l
    (Z :. nl) = extent idx
    iter (Z :. i :. j) = let (ip, im) = idx ! (Z :. i); (jp, jm) = idx ! (Z :. j)
        in (mat ! (Z :. ip :. jp)) ! (Z :. im :. jm)

-- alpha = 0, beta = 1
-- |babb> = 1011 = 11
stateIndex :: String -> Int
stateIndex x = iter (length x - 1) x where
    iter n (x:xs) = (if n == 0 then 0 else iter (n - 1) xs) + (if x == 'a' then 0 else bit n) 

-- | The kth eigenstate represented as n-component vector
eigenState :: Int -> Int -> RP.Array RP.U RP.DIM1 (Complex Double)
eigenState n k = RP.computeS $ RP.fromFunction (Z :. n) (\(Z :. i) -> if k == i then 1 else 0)

state_ab = eigenState (bit 2) $ stateIndex "ab"
state_ba = eigenState (bit 2) $ stateIndex "ba"
state_aa = eigenState (bit 2) $ stateIndex "aa"
state_bb = eigenState (bit 2) $ stateIndex "bb"
singlet = RP.computeS $ RP.map (* (2 ** (-0.5))) (state_ab -^ state_ba)
triplet = RP.computeS $ RP.map (* (2 ** (-0.5))) (state_ab +^ state_ba)

main = do
    putStrLn $ "[Singlet] (Si . Sj) S^2"
    print $ let state = singlet in dot state (hamil `mvmult` state)
    print $ let state = singlet in dot state (s2 `mvmult` state)
    putStrLn $ "[Triplet] (Si . Sj) S^2"
    print $ let state = triplet in dot state (hamil `mvmult` state)
    print $ let state = triplet in dot state (s2 `mvmult` state)
    putStrLn $ "[|aa>] (Si . Sj) S^2"
    print $ let state = state_aa in dot state (hamil `mvmult` state)
    print $ let state = state_aa in dot state (s2 `mvmult` state)
