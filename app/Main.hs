module Main where

import Essbar
import GummiBärchen
import Ente

main :: IO ()
main = putStrLn $ show $ (farben Rot) <$> Ente [
  GummiBärchen 10.0 Rot,
  GummiBärchen 7.5 Orange,
  GummiBärchen 2.0 Grün
  ]
