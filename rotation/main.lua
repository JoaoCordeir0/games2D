-- Controle de rotação pelo teclado
-- Variáveis globais
local angulo = 0
local largura = 100
local altura = 100

function love.load()
  -- Definir um plano de fundo
  love.graphics.setBackgroundColor(1,0.88,0.88)
end

function love.draw()
  -- Processo de rotação da tela gráfica
  love.graphics.rotate(angulo)
  
  -- Desenhar uma primitiva como um personagem ou objeto
  love.graphics.setColor(0,0,1,1) -- Azul
  love.graphics.rectangle('fill', 300, 400, largura, altura)
  
end

function love.update(dt)
  delta = math.pi * dt
  
  -- Ao pressionar a tecla D rotacioa no sentido horário 
  if love.keyboard.isDown('d') then
    angulo = angulo + delta
  end
  
  -- Ao pressionar a tecla A rotaciona no sentido anti-horário
  if love.keyboard.isDown('a') then
    angulo = angulo - delta
  end
end
