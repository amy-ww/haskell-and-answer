module Main where

import Graphics.Gloss
import Graphics.Gloss.Interface.Pure.Game
import GameFunctions

-- main
main :: IO()
main = play
  window
  background
  20
  initWorld -- initializes the world
  world2Pic -- converts worlds into pictures that can be displayed
  eventHandler -- handles keyboard events
  updateWorld -- updates world info