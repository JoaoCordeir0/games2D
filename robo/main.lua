-- Rotaciona uma imagem 
local angulo = 0
local largura, altura
local personagem
local telaLargura, telaAltura
local escala = 0.5

function love.load()
  personagem = love.graphics.newImage('robo.png')
  telaLargura = love.graphics.getWidth()
  telaAltura = love.graphics.getHeight()
  
  -- Coletar as informações da imagem
  largura = personagem:getWidth() * escala
  altura = personagem:getHeight() * escala
  
  -- Background color
  love.graphics.setBackgroundColor(1,0.88,0.88)
end

function love.draw()
  love.graphics.draw(
    personagem, 
    (telaLargura - largura) / 2, 
    (telaAltura - altura) / 2, 
    angulo, 
    escala, 
    escala, 
    (1/escala) * (largura / 2.0), 
    (1/escala) * (altura / 2.0))
end

function love.update(dt)
  delta = math.pi * dt
  
  -- Pressionar o A para girar no sentido anti-horário
  if love.keyboard.isDown('a') then
    angulo = angulo - delta
  end
  
  -- Pressionar o D para girar no sentido horário 
  if love.keyboard.isDown('d') then
    angulo = angulo + delta
  end
end