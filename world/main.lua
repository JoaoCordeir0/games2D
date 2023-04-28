-- Gerar um mundo virtual baseado em sprite aleatorio
-- Apelidos

local Q = love.graphics.newQuad
local K = love.keyboard.isDown

-- Váriaveis globais de controle do mapa
local map -- Armazena o quadro real
local mapWidht, mapHeight -- Controla as dimensões do mapa
local mapX, mapY  -- Controla o tamanho do mapa
local visionWidht, visionHeight -- Controla a viewport
local zoomX, zoomY

-- Quadros / Ladrilhos
local qdImg -- Quad da sprite
local quad -- Dimensões do ladrilho
local quads = {} -- Tabela que define quadros que vão ser usados
local lotQuads

function love.load()
    font = love.graphics.newFont(14)
    love.graphics.setFont(font)

    -- Configurar o mapa
    configMap()

    -- Configurar a viewport
    configVision()

    -- Configura os quadros de renderização
    configQuad()
end

function love.draw()
    love.graphics.draw(lotQuads, math.floor(- zoomX * (mapX % 1) * quad), math.floor(- zoomY * (mapY % 1) * quad), 0, zoomX, zoomY)
    love.graphics.print("FPS: " .. tostring(love.timer.getFPS()))
end

function love.update(dt)
    if K("up") then
        moveMap(0, - 0.2 * quad * dt)
    elseif K("down") then
        moveMap(0, 0.2 * quad * dt)
    end

    if K("left") then
        moveMap(-0.2 * quad * dt, 0)
    elseif K("right") then
        moveMap(0.2 * quad * dt, 0)
    end
end

function configMap()
    mapWidht = 60
    mapHeight = 40
    map = {}
    
    for x = 1, mapWidht do
        map[x] = {}
        for y = 1, mapHeight do
            map[x][y] = love.math.random(0, 3)
        end
    end
end

function configVision()
    mapX = 1
    mapY = 1
    visionWidht = 26
    visionHeight = 20
    zoomX = 1
    zoomY = 1
end

function configQuad()
    qdImg = love.graphics.newImage('mundo.png')
    qdImg:setFilter("nearest", "linear")
    quad = 32
    -- Coletar os Quads
    quads[0] = Q(0 * quad, 20 * quad, quad, quad, qdImg:getWidth(), qdImg:getHeight())
    quads[1] = Q(2 * quad, 0 * quad, quad, quad, qdImg:getWidth(), qdImg:getHeight())
    quads[2] = Q(4 * quad, 0 * quad, quad, quad, qdImg:getWidth(), qdImg:getHeight())
    quads[3] = Q(3 * quad, 9 * quad, quad, quad, qdImg:getWidth(), qdImg:getHeight())

    -- Criar o lote de quadros
    lotQuads = love.graphics.newSpriteBatch(qdImg, visionWidht * visionHeight)

    modifyLot()
end

function modifyLot()
    -- Limpa o lote
    lotQuads:clear()
    -- Atualiza os novos quadros no lote
    for x = 0, visionWidht - 1 do
        for y = 0, visionHeight - 1 do
            lotQuads:add(quads[map[x + math.floor(mapX)][y + math.floor(mapY)]], x * quad, y * quad)
        end
    end    
    lotQuads:flush()        
end

function moveMap(dx, dy)
    oldX = mapX
    oldY = mapY

    mapX = math.max(math.min(mapX + dx, mapWidht - visionWidht), 1)
    mapY = math.max(math.min(mapY + dy, mapHeight - visionHeight), 1)

    if math.floor(mapX) ~= math.floor(oldX) or math.floor(mapY) ~= math.floor(oldY) then
        modifyLot()
    end
end