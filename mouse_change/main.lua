# Verificando qual botão do mouse foi pressionado
function love.load()
  love.graphics.setFont(love.graphics.newFont(16))
  
  -- Personalizar o cursor do Mouse 
  -- Carregar a imagem do cursor  
  love.mouse.setCursor(love.mouse.newCursor("novocursor.png"))
  
end

function love.draw()
  if love.mouse.isDown(1) then
    love.graphics.print("Botão ESQUERDO pressionado", 50, 50)
  end
  
  if love.mouse.isDown(2) then
    love.graphics.print("Botão DIREITO pressionado", 50, 50)
  end

  if love.mouse.isDown(3) then
    love.graphics.print("Botão CENTRAL pressionado", 50, 50)
  end
end

function love.keypressed(k)
  x, y = math.random(0, 800), math.random(0, 600)
  
  love.mouse.setPosition(x, y)
  
  -- Controlar a visibilidade do mouse
  if k == 'v' then
    if love.mouse.isVisible() then
      love.mouse.setVisible(false)
    else
      love.mouse.setVisible(true)
    end
  end
  
end