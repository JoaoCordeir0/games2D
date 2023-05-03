-- Apelidos 
local LG = love.graphics
local Q = love.graphics.newQuad

-- mapa projeto 01

project01 = {
--   1, 2, 3, 4, 5, 6, 7, 8, 9, 10,11,12,13,14,15,16,17,18,19,20,21,22,23,24
    {1, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 2, 1, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 2}, -- 1
    {3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3}, -- 2
    {3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3}, -- 3
    {3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3}, -- 4
    {3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3}, -- 5
    {3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3}, -- 6
    {3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3}, -- 7
    {3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3}, -- 8
    {4, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 5}, -- 9
    {1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 2}, -- 10
    {3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3}, -- 11
    {3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3}, -- 12
    {3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3}, -- 13
    {3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3}, -- 14
    {3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3}, -- 15
    {3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3}, -- 16
    {3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3}, -- 17
    {4, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 5, 4, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 5} -- 18
}   

project02 = {
--   1, 2, 3, 4, 5, 6, 7, 8, 9, 10,11,12,13,14,15,16,17,18,19,20,21
    {1, 6, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, -- 1
    {3, 0, 4, 6, 6, 6, 6, 6, 6, 6, 6, 6, 2, 0, 0, 0, 0, 0, 0, 0, 0}, -- 2
    {3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0}, -- 3
    {3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0}, -- 4
    {3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0}, -- 5
    {3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0}, -- 6
    {3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0}, -- 7
    {3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0}, -- 8
    {3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0}, -- 9
    {4, 6, 6, 6, 6, 6, 6, 2, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0}, -- 10
    {0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0}, -- 11
    {0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 4, 6, 6, 6, 6, 6, 6, 6, 2}, -- 12
    {0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3}, -- 13
    {0, 0, 0, 0, 0, 0, 0, 4, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 5}, -- 14    
}

-- Tabelas
map = {}
player = {}
fase = 1

function love.load()
    -- Carga da imagem do Sprite
    LG.setBackgroundColor(1,1,1)
    map.img = LG.newImage('ambiente.png')
    map.larg = map.img:getWidth()
    map.alt = map.img:getHeight()
    
    -- Calcular o tamanho do ladrilho
    map.h = (map.larg / 3) - 2
    map.v = (map.alt / 2) - 2
    
    -- Coletando os ladrilhos
    quads = {}
    for l = 0, 1 do
        for c = 0, 2 do 
            table.insert(quads, Q(1 + c * (map.h + 2), 1 + l * (map.v + 2), map.h, map.v, map.larg, map.alt))
        end
    end

    -- Carregar personagem 
    player.img = LG.newImage('face.png')
    player.x = 2
    player.y = 2
end

function love.draw()
    if fase == 1 then
        -- Renderizar o mapa do projeto 1
        for i, row in ipairs(project01) do
            for j, quad in ipairs(row) do
                if quad ~= 0 then
                    LG.draw(map.img, quads[quad], (j - 0.5) * map.h, (i - 0.5) * map.v)
                end
            end
        end       
    end
    
    if fase == 2 then
        -- Renderizar o mapa do projeto 2
        for i, row in ipairs(project02) do
            for j, quad in ipairs(row) do
                if quad ~= 0 then
                    LG.draw(map.img, quads[quad], (j - 0.5) * map.h, (i - 0.5) * map.v)
                end
            end
        end   
    end

    -- Renderiza o personagem 
    LG.draw(player.img, (player.x - 0.5) * map.h, (player.y - 0.5) * map.v)            
end

function love.keypressed(k)
    local x, y = player.x, player.y
    if k == 'left' or k == 'a' then
        x = x - 1
    elseif k == 'right' or k == 'd' then
        x = x + 1
    elseif k == 'up' or k == 'w' then
        y = y - 1
    elseif k == 'down' or k == 's' then
        y = y + 1
    end

    if k == '1' then
        fase = 1
        player.x = 2
        player.y = 2
    elseif k == '2' then
        fase = 2
        player.x = 2
        player.y = 2
    else 
        if path(x, y) then
            player.x = x
            player.y = y
        end
    end
end

function path(x, y)
    local destiny = false
    if fase == 1 then
        destiny = (project01[y][x] == 0)
    end
    if fase == 2 then
        destiny = (project02[y][x] == 0)
    end
    
    return destiny
end