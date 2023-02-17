-- Lista de pontos da curva
local curva = love.math.newBezierCurve(100, 100, 150, 450, 250, 300, 350, 450, 400, 100)

function love.load()
  img = love.graphics.newImage("RelogioEng.jpg")
end

function love.draw()
  love.graphics.print("Personalizando a configuração", 50, 50)
  
  -- Exibir a imagem na posição 100, 100
  -- love.graphics.draw(img, 100, 100)
  
  -- Exibir a imagem na posição 100, 100 com a metade do tamanho      
  --                                Gira a imagem em 45 graus
  love.graphics.draw(img, 600, 100, 45 * math.pi / 180, 0.5, 0.5)
  
  -- Exibir a curva interpolada
  love.graphics.setColor(1,1,0,1)
  love.graphics.line(curva:render())
  
  love.graphics.setColor(1,0,0,1)
  -- ponto (100,100)
  love.graphics.line(95, 100, 105, 100)
  love.graphics.line(100, 95, 100, 105)
  -- ponto (150, 450)
  love.graphics.line(145, 450, 155, 450)
  love.graphics.line(150, 445, 150, 455)
  -- ponto (250, 300)
  love.graphics.line(245, 300, 255, 300)
  love.graphics.line(250, 295, 250, 105)
  -- ponto (350, 450)
  love.graphics.line(345, 450, 355, 450)
  love.graphics.line(350, 445, 350, 445)
  -- ponto (400, 100)
  love.graphics.line(395, 100, 405, 100)
  love.graphics.line(400, 95, 400, 105)
end
