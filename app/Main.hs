module Main where

import Graphics.Gloss

import Data.Array

type Stage = Array Pos Tile

data Tile =
    Objects [Object]
  | Text Object
  | Verb Verb
  | Attr Attr

data Object =
    Wall
  | Rock
  | Flag
  | Baba

data Verb =
    Is
  | Has
  | Make

data Attr =
    Stop
  | You
  | Win
  | Push

type Pos = (Int, Int)

window :: Display
window = InWindow "Nice Window" (200, 200) (10, 10)

background :: Color
background = white

drawing :: Picture
drawing = circle 80

main :: IO ()
main = display window background drawing