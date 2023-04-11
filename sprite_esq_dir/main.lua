-- Iniciando na Animação com Sprites
-- Atalhos
local LG = love.graphics
local LQ = love.graphics.newQuad
local LK = love.keyboard

-- Variáveis globais
local player = {}
local quads = {}

-- Personalização das dimensões dos ladrilhos
local qWidth, qHeight = 32, 32
local sWidth, sHeight = 256, 32

-- Controle de direção e quadro atual
local direction = 'right'
local default = true
local walk, max = 1, 8
local status = true
local time = 0.1

function love.load()
    LG.setDefaultFilter('nearest')
    LG.setBackgroundColor(1, 1, 1)
    
    -- Carregar o personagem
    player.imgdir = LG.newImage('sprite-dir.png')
    player.imgesq = LG.newImage('sprite-esq.png')
    
    player.x, player.y = 50, 50
    
    -- Definir o controle de quadros para animação
    quads['right'] = {}
    quads['left'] = {}
    
    -- Carregamento dos ladrilhos nas tabelas
    for c = 1, 8 do
        quads['right'][c] = LQ((c - 1) * 32, 0, qWidth, qHeight, sWidth, sHeight)
        quads['left'][c] = LQ((c - 1) * 32, 0, qWidth, qHeight, sWidth, sHeight)
    end
end

function love.draw()
    for c = 1, 8 do
        LG.draw(default and player.imgdir or player.imgesq, quads[direction][walk], player.x, player.y)
    end
end

function love.update(dt)
    if not status then
        time = time + dt

        if time > 0.2 then
            time = 0.1
            walk = walk + 1

            if LK.isDown('right') then
                player.x = player.x + 5
            elseif LK.isDown('left') then
                player.x = player.x - 5
            end

            if walk > max then
                walk = 1
            end
        end
    end
end

function love.keypressed(key)
    if quads[key] then
        direction = key
        status = false
    end

    default = (key == 'right')    
end

function love.keyreleased(key)
    if quads[key] and direction == key then
        status = true
        walk = 1
        -- direction = 'right'
        -- default = true
    end
end