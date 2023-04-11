-- Iniciando na Animação com Sprites
-- Atalhos
local LG = love.graphics
local LQ = love.graphics.newQuad
local LK = love.keyboard

local player = {}
local quad = {}

-- Variáveis para dimensões do ladrilho
qWidth = 32
qHeight = 32
sWidth = 256
sHeight = 32

-- Controle do quadro atual
step = 1
max = 8
timer = 0.1

function love.load()
    -- Aplicar um filtro para suavizar a animação
    LG.setDefaultFilter('nearest')
    LG.setBackgroundColor(1, 1, 1)
    
    player.img = LG.newImage('sprite-dir.png')
    player.x = 50
    player.y = 50
    
    -- newQuad(posX, posY, widthH, widthV, widthSpriteH, widthSpriteV)
    for c = 1, 8 do
        quad[c] = LQ((c - 1) * 32, 0, qWidth, qHeight, sWidth, sHeight)
    end
end

function love.draw()
    LG.draw(player.img, quad[step], player.x, player.y)
end

function love.update(dt)
    timer = timer + dt
    
    if LK.isDown('right') then
        if timer > 0.2 then
            timer = 0.1
            
            -- Animação do Sprite incrementa o passo da imagen e volta a zero no máximo
            step = step + 1
            
            player.x = player.x + 5
                        
            if step > max then
                step = 1
            end
        end
    end
end
