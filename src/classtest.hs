{-# LANGUAGE TypeFamilies, FlexibleInstances, StandaloneDeriving, GADTs, FunctionalDependencies, MultiParamTypeClasses, FlexibleContexts, RankNTypes #-}

data D = D deriving Show
data V = V deriving Show
data U = U deriving Show

class SDV r q where {}

instance SDV D Double
instance SDV V Double

instance SDV U Int
instance SDV D Int

data TA r = TA r Int deriving Show
data TB r = TB r Int deriving Show
data TC r p = TC r Int deriving Show

data TD r where
    TDBV :: TC U Int -> TD V
    TDBD :: TC D Int -> TD D

instance Show (TD V) where
    show (TDBV tc) = show tc

buildTDV :: Int -> TD V
buildTDV x = TDBV (TC U x)

buildTDD :: Int -> TD D
buildTDD x = TDBD (TC D x)

fa :: (SDV r1 Double, SDV r2 Double) => TA r1 -> TA r2 -> TA D
fa (TA _ x) (TA _ y) = TA D (x + y)

fb :: (SDV r1 Double, SDV r2 Double) => TB r1 -> TB r2 -> TB D
fb (TB _ x) (TB _ y) = TB D (x - y)

fc :: (SDV r1 Int, SDV r2 Int) => TC r1 Int -> TC r2 Int -> TC D Int
fc (TC _ x) (TC _ y) = TC D (x * y)

fctg :: (forall r1 r2 . (SDV r1 Int, SDV r2 Int) => TC r1 Int -> TC r2 Int -> TC D Int)
    -> ( (TC U Int -> TC U Int -> TC D Int),
        (TC D Int -> TC D Int -> TC D Int),
        (TC U Int -> TC D Int -> TC D Int),
        (TC D Int -> TC U Int -> TC D Int) )
fctg f = (fvv, fdd, fvd, fdv) where
    fvv :: TC U Int -> TC U Int -> TC D Int
    fvv x y = f x y
    fdd :: TC D Int -> TC D Int -> TC D Int
    fdd x y = f x y
    fvd :: TC U Int -> TC D Int -> TC D Int
    fvd x y = f x y
    fdv :: TC D Int -> TC U Int -> TC D Int
    fdv x y = f x y

fct :: (forall r1 r2 . (SDV r1 Int, SDV r2 Int) => TC r1 Int -> TC r2 Int -> TC D Int)
    -> (SDV r1x Double, SDV r2x Double) => TD r1x -> TD r2x -> TD D
fct f (TDBV tcx) (TDBV tcy) = TDBD (f tcx tcy)
fct f (TDBD tcx) (TDBD tcy) = TDBD (f tcx tcy)
fct f (TDBV tcx) (TDBD tcy) = TDBD (f tcx tcy)
fct f (TDBD tcx) (TDBV tcy) = TDBD (f tcx tcy)

fd :: (SDV r1 Double, SDV r2 Double) => TD r1 -> TD r2 -> TD D
fd = fct fc
-- fd (TDBV tcx) (TDBV tcy) = TDBD (fc tcx tcy)
-- fd (TDBD tcx) (TDBD tcy) = TDBD (fc tcx tcy)
-- fd (TDBV tcx) (TDBD tcy) = TDBD (fc tcx tcy)
-- fd (TDBD tcx) (TDBV tcy) = TDBD (fc tcx tcy)

class TM m where
    ff :: (SDV r1 Double, SDV r2 Double) => m r1 -> m r2 -> m D
    compute :: m D -> m V

instance TM TA where
    ff = fa
    compute (TA D x) = TA V x

instance TM TB where
    ff = fb
    compute (TB D x) = TB V x

instance TM TD where
    ff = fd
    compute (TDBD (TC D x)) = (TDBV (TC U x))

class MM m where
    minit :: m V

instance MM TA where
    minit = TA V 100

instance MM TB where
    minit = TB V 200

instance MM TD where
    minit = TDBV (TC U 400)

ginit :: (MM m, TM m) => m V
ginit = compute $ (ff (ff minit minit) minit)

main :: IO ()
main = do
    print $ fa (TA D 1) (TA D 2)
    print $ (ginit :: TA V)
    print $ (ginit :: TB V)
    print $ (ginit :: TD V)
