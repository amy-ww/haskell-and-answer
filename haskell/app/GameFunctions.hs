module GameFunctions where 

import Graphics.Gloss
import Graphics.Gloss.Interface.Pure.Game

-- world data type
-- Int, Picture, Bool
data World = World {
    state::Int,
    screen::Picture,
    switch::Bool
}

-- window display
window :: Display
-- window = FullScreen
window = InWindow "window" (800,500) (20,20)

-- background color
background :: Color
background = white

-- initial world
initWorld :: World
initWorld = (World 0 pic0 False)

pic0 :: Picture
pic0 = text "type a b c d"

pic1 :: Picture
pic1 = arc 0 90 100

pic2 :: Picture
pic2 = arc 0 180 100

pic3 :: Picture
pic3 = arc 0 270 100

pic4 :: Picture
pic4 = circle 100

-- convert world to picture
world2Pic :: World -> Picture
world2Pic (World n p b) = p

-- handle events
eventHandler :: Event -> World -> World
eventHandler (EventKey (Char 'a') Down _ _) (World 0 pic0 True) = (World 1 pic1 False)
eventHandler (EventKey (Char 'b') Down _ _) (World 1 pic1 True) = (World 2 pic2 False)
eventHandler (EventKey (Char 'c') Down _ _) (World 2 pic2 True) = (World 3 pic3 False)
eventHandler (EventKey (Char 'd') Down _ _) (World 3 pic3 True) = (World 4 pic4 False)
eventHandler _ w = w

-- step through world (update)
updateWorld :: Float -> World -> World
updateWorld _ (World n p b) | n == 0 && b == False = (World 0 pic0 True)
                            | n == 1 && b == False = (World 1 pic1 True)
                            | n == 2 && b == False = (World 2 pic2 True)
                            | n == 3 && b == False = (World 3 pic3 True)
                            | otherwise = (World n p b)
