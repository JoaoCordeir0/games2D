-- Animação combinada translação e rotação
local bola = {}
local delta = 0 -- Controla a rotação 
local dx = 0 -- Controla a translação

function love.load()
  love.graphics.setBackgroundColor(1,1,1)
  
  -- Carregar a imagem a ser usada 
  bola.img = love.graphics.newImage('bolacinza.png')
  bola.posx = 25
  bola.posy = 300
  bola.ang = 0  
end

function love.draw()
  love.graphics.draw(
    bola.img, 
    bola.posx, 
    bola.posy, 
    bola.ang, 
    1, 
    1,
    25,
    25
)
end

function love.update(dt)
  -- Faz girar em torno de si
  delta = delta + math.pi * dt  
  bola.ang = delta
  
  -- Impor um atraso na renderização da imagem
  if love.keyboard.isDown('c') then
    love.timer.sleep(0.5)
  end
  
  -- Faz mover pro lado
  if dx > love.graphics.getWidth() then
    dx = 0
  else     
    dx = dx + math.pi * 100 * dt
    bola.posx = dx
  end
end