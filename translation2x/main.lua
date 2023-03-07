-- Translação em dois eixos simultâneos
-- Váriaveis Globais 
delta = 500 -- Passo do personagem
personagem = {} -- Criando uma tabela de dados do personagem
tela = {} -- Tabela para informações da tela gráfica

function love.load()
  -- Coletar as informações da tela gráfica
  tela.h = love.graphics.getWidth()
  tela.v = love.graphics.getHeight()
  
  -- Caracterizar o meu personagem  
  personagem.tamanho = 50
  personagem.x = (tela.h - personagem.tamanho) / 2
  personagem.y = (tela.v - personagem.tamanho) / 2
  
  love.graphics.setBackgroundColor(1,0.86,0.78)
  love.graphics.setColor(0,0,1,1)
end

function love.draw()
  love.graphics.rectangle(
    'fill', 
    personagem.x, 
    personagem.y, 
    personagem.tamanho, 
    personagem.tamanho
  )  
end

function love.update(dt)
  -- Controle para a diretia e esquerda
  if love.keyboard.isDown('d') and personagem.x < (tela.h - personagem.tamanho) then
    personagem.x = personagem.x + delta * dt
  elseif love.keyboard.isDown('a') and personagem.x > 0 then
    personagem.x = personagem.x - delta * dt
  end
  
  -- Controle para frente e trás
  if love.keyboard.isDown('w') and personagem.y > 0 then
    personagem.y = personagem.y - delta * dt
  elseif love.keyboard.isDown('s') and personagem.y < (tela.v - personagem.tamanho) then
    personagem.y = personagem.y + delta * dt
  end
end