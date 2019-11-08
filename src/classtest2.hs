{-# LANGUAGE FlexibleContexts, RankNTypes, FlexibleInstances #-}

data U = U deriving Show
data V = V deriving Show

data P = P deriving Show
data X i r = X i deriving Show

class M m where
    g :: m U -> m V
    echo :: Int -> m U

instance M (X i) where
    g (X i) = X i
    -- echo = undefined

instance M (X U) where
    echo k = X U
    -- g = undefined

main = do
    print (echo 5 :: (X U U))
