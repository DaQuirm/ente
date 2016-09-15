module GummiBärchen where

import Essbar

data Farbe = Rot | Grün | Gelb | Orange | Weiß deriving (Show)

data GummiBärchen = GummiBärchen {
  süßigkeit :: Float,
  farbe :: Farbe
} deriving (Show)

instance Essbar GummiBärchen where
  essen bärchen = (show bärchen) ++ " nom nom"

farben :: Farbe -> GummiBärchen -> GummiBärchen
farben farbe bärchen = bärchen { farbe = farbe }
