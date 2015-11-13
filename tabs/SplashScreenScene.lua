-- SplashScreenScene
-- Lesson7

-- Created by: Zacharias Octavious 
-- Created on: Nov - 2015
-- Created for: ICS2O
-- This is the first scene

SplashScreenScene = class()

--global to this file
local moveForwardButton

function SplashScreenScene:init()

    --sprite("Dropbox:Green Forward Circle Button")
    moveForwardButton = Button("Dropbox:Green Forward Circle Button", vec2(WIDTH/2, HEIGHT/2))
    
end

function SplashScreenScene:draw()
    -- Codea does not automatically call this method
    
    sprite("Dropbox:CompanyLogo", WIDTH/2, HEIGHT/2)
    moveForwardButton:draw()
end

function SplashScreenScene:touched(touch)
    -- Codea does not automatically call this method
    
    moveForwardButton:touched(touch)
    
    if(moveForwardButton.selected == true) then
        Scene.Change("play")
    end
end