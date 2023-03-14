-- Interface para o usuário (UI)
suit = require 'suit'
local LG = love.graphics

function love.load()
  LG.setFont(LG.newFont(18))
end

function love.draw()
  suit.draw()
end

function love.update(dt)
  suit.layout:reset(100, 100)
  suit.layout:padding(10)
  suit.Label(
    "Título do jogo", 
    300, 10, 
    200, 30
  )
  
  if suit.Button("Start", {id='start'}, suit.layout:row(200, 30)).hit then
    LG.setBackgroundColor(1, 1, 0, 1)
  end
  
  if suit.Button("Level", {id='level'}, suit.layout:row()).hit then
    LG.setBackgroundColor(0, 0, 1, 1)
  end
  
  if suit.Button("Exit", {id='exit'}, suit.layout:row()).hit then
    LG.setBackgroundColor(1, 0, 0, 1)
  end
  
end
