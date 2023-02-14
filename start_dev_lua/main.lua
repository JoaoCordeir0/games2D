-- Carrega os recursos necessários do jogo antes de iniciar o jogo
function love.load()

end

-- Responsável pela renderização do jogo no FPS
function love.draw()
  -- Apresentar um texto na tela do jogo
  -- Na posição 200, 300
  love.graphics.setBackgroundColor(0,0,255,1)
  love.graphics.setColor(1,1,1,1) --White  
  --                                 X    Y
  love.graphics.print("First Game", 200, 300)  
  
end

-- Responsável pelos cálculos de atualização que envolvam o tempo
function love.update(dt)
  
end