local p1 = {200,250, 300,50, 400,150, 500,50, 600,250}
local p2 = {200,400, 250,300, 300,200, 350,250, 400,300, 450,250, 500,200, 550,300, 600,400}
local p3 = {200,550, 240,450, 300,350, 360,400, 400,450, 440,400, 500,350, 560,450, 600,550}

function love.load()
  love.graphics.setBackgroundColor(1,1,1)  
end

function love.draw()
  -- Desenhar um poligono com base nos pontos
  love.graphics.setColor(0,0,1,1) --Azul
  love.graphics.line(p1)
  love.graphics.line(p2)
  love.graphics.line(p3)
  
  -- Desenhar como curva
  love.graphics.setColor(1,0,0,1) -- Vermelho
  
  c1 = love.math.newBezierCurve(p1)
  love.graphics.line(c1:render())
  
  c2 = love.math.newBezierCurve(p2)
  love.graphics.line(c2:render())
  
  c3 = love.math.newBezierCurve(p3)
  love.graphics.line(c3:render())
  
end