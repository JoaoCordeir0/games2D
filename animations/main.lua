# Básico de animação

-- Variáveis globais
posX = 0
velocidade = 100

function love.load()
  -- Definir o fundo da janela com a cor Branca
  love.graphics.setBackgroundColor(1,1,1)
end

function love.draw()
  -- Definir a cor dos elementos a desenhar (vermelho)
  love.graphics.setColor(1,0,0,1)
  -- Desenhar uma linha (0,0) até (400,400)
  love.graphics.line(0,0, 400,400)
  -- Mudar a cor atual para azul
  love.graphics.setColor(0,0,1,1)
  
  midV = love.graphics.getHeight() / 2
  limitH = love.graphics.getWidth()
  
  love.graphics.line(0, midV, limitH, midV)
  
  -- Desenhar um poligono em verde
  love.graphics.setColor(0,1,0,1)
  love.graphics.polygon('fill', {posX + 10,100, posX + 200,100, posX + 200,300, posX + 10,300})
end

function love.update(dt)
  --if (posX < love.graphics.getWidth()) then 
  --  posX = posX + velocidade * dt
  --else
  --  posX = -200
  --end
  
  if (posX < love.graphics.getWidth() - 200) and (sentido == 1) then
    sentido = 1
  else
    sentido = -1
  end
  
  if (posX >= 0) and (sentido == -1) then
    sentido = -1
  else
    sentido = 1
  end
  
  posX = posX + sentido * velocidade * dt
  
end
