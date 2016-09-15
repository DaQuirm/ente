module Ente where

data Ente a = Ente [a]

instance (Show a) => Show (Ente a) where
  show (Ente contents) = "Das ist eine 🐤 Ente mit " ++ (inspect contents) ++ " drin"
    where
      inspect = flip (>>=) (((++) "\n") . show)

instance Functor Ente where
  fmap f (Ente contents) = (Ente (f <$> contents))
