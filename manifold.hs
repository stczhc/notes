
type R = Double
type Manifold = [R]

-- two mainfolds M and N
data M = M Manifold
data N = N Manifold

-- a scalar field on M and N
data FM = FM (M -> R)
data FN = FN (N -> R)

-- a vector on M and N
data VM = VM (FM -> R)
data VN = VN (FN -> R)

-- a dual vector on M and N
data DM = DM (VM -> R)
data DN = DN (VN -> R)

-- a (0, l) type tensor field on M and N
data TFM = TFM (M -> ([VM] -> R))
data TFN = TFN (N -> ([VN] -> R))

-- a (k, 0) type tensor on M and N
data TM = TM ([DM] -> R)
data TN = TN ([DN] -> R)

-- a (0, l) type tensor on M and N
data LM = LM ([VM] -> R)
data LN = LN ([VN] -> R)

-- given a phi : M -> N, we will have a phi_pull : FN -> FM
phi_pull :: (M -> N) -> (FN -> FM)
phi_pull phi = \(FN f) -> FM (\m -> f (phi m))

-- given a phi : M -> N, we will have a phi_push : VM -> VN
phi_push :: (M -> N) -> (VM -> VN)
phi_push phi = \(VM v) -> VN (\fn -> v ((phi_pull phi) fn))

-- given a phi : M -> N, we will have a phi_field : TFN -> TFM
-- it has a per-point def, which is phi_dual
phi_field :: (M -> N) -> (TFN -> TFM)
phi_field phi = \(TFN t) -> TFM (\m -> let LM lm = (phi_dual phi) (LN (t (phi m))) in lm)

-- given a phi : M -> N, we will have a phi_dual : LN -> LM
phi_dual :: (M -> N) -> (LN -> LM)
phi_dual phi = \(LN t) -> LM (\vms -> t (map (phi_push phi) vms))

-- given a phi : M -> N, we will have a phi_tensor : TM -> TN
phi_tensor :: (M -> N) -> (TM -> TN)
phi_tensor phi = \(TM tm) -> TN (tm . dms) where
    dms = map ((\(LM lm) -> DM (\vm -> lm [vm])) . phi_dual phi . (\(DN dn) -> LN (\[vn] -> dn vn)))

main = do
    let phi (M x) = N x
    print $ const () (phi_tensor phi)
    print $ const () (phi_field phi)