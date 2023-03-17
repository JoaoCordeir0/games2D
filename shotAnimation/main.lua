-- Disparando elementos com o mouse
-- Atalhos
local LG = love.graphics
-- Variáveis globais
local veloc = 250
local posShot = {x = 0, y = 0, larg = 50, alt = 50}
local shots = {}

function love.load()
  local l, a = LG.getWidth(), LG.getHeight()
  
  -- Disparo vai ocorrer a partir do centro da tela
  posShot.x = (l - posShot.larg) / 2
  posShot.y = (a - posShot.alt) / 2  
end

function love.draw()
  LG.setColor(1,0,0,1) -- Vermelho
  -- Renderiza os tiros já disparados
  for i, actual in pairs(shots) do
    LG.circle('fill', actual.x, actual.y, 6)
  end
  -- Retorna para a cor Branca para mensagens de texto
  LG.setColor(1,1,1,1)
  LG.print("Clique com o mouse para disparar!", 20, 20)
  LG.rectangle('line', posShot.x, posShot.y, posShot.larg, posShot.alt)  
end

function love.update(dt)
  -- Controlar o disparo com o mouse
  if love.mouse.isDown(1) then
    -- Definir a posição do disparo (meio da caixa)
    local X = posShot.x + (posShot.larg / 2)
    local Y = posShot.y + (posShot.alt / 2)
    
    -- Coletar a posição do alvo (mouse)
    local alvoX, alvoY = love.mouse.getPosition()
    
    -- Alvo do tiro
    local angle = math.atan2((alvoY - Y), (alvoX - X))
    
    -- Criar o novo disparo e incluir na tabela 
    newShot = {x = X, y = Y, ang = angle}
    table.insert(shots, newShot)
  end
  -- Movimentação do disparador na horizontal
  if love.keyboard.isDown('d') then
    posShot.x = posShot.x + 50 * dt
  elseif love.keyboard.isDown('a') then
    posShot.x = posShot.x - 50 * dt
  elseif love.keyboard.isDown('s') then
    posShot.y = posShot.y + 50 * dt
  elseif love.keyboard.isDown('w') then
    posShot.y = posShot.y - 50 * dt
  end
  
  -- Animação dos disparos 
  for i, actual in pairs(shots) do
    -- Física: Dx = deslocamento na direção X, Dy = deslocamento na direção Y
    local Dx = veloc * math.cos(actual.ang)
    local Dy = veloc * math.sin(actual.ang)
    actual.x = actual.x + (Dx * dt)
    actual.y = actual.y + (Dy * dt)
    
    -- Verificação para a limpeza de disparos que sairem da tela
    if actual.x > LG.getWidth() or actual.y > LG.getHeight() or actual.x < 0 or actual.y < 0 then
      table.remove(shots, i)
    end
  end
end 