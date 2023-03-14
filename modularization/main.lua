-- Modularização
-- Incluir meu arquivo de biblioteca
require ('./library')

function love.load()
  love.graphics.setFont(love.graphics.newFont(16))
end

function love.draw()
  love.graphics.setColor(1,1,0,1) -- Amarelo
  
  love.graphics.print("Jogos 2D - UNIFAE", 100, 100)
  
  setColor(1, 0, 0) -- Função da library
  txtCenter("Jogos 2D - UNIFAE") -- Função da library
  
  setColor(1, 1, 1) -- Função da library
  lineDoted(
      400, 0,
      400, 600
  )
  love.graphics.line(
      0, 300,
      800, 300
  )
end


