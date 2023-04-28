function love.load()
    -- map = {1, 0, 0, 1, 1, 0, 1, 1, 1, 0} -- 0 é vazio, 1 é preenchido
    map = {
    --   1, 2, 3, 4, 5, 6, 7, 8, 9,10,11,12,13,14,15
        {1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1}, -- Linha 1
        {1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1}, -- Linha 2
        {1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1}, -- Linha 3
        {1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1}, -- Linha 4
        {1, 3, 3, 3, 3, 3, 4, 4, 4, 3, 3, 3, 3, 3, 1}, -- Linha 5
        {1, 3, 3, 3, 3, 4, 4, 4, 4, 4, 3, 3, 3, 3, 1}, -- Linha 6
        {1, 3, 3, 3, 3, 3, 4, 4, 4, 3, 3, 3, 3, 3, 1}, -- Linha 7
        {1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1}, -- Linha 8
        {1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1}, -- Linha 9
        {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, -- Linha 10
    }

    colors = {
        {0.65, 0.65, 0.65},
        {0.80, 0.40, 0.00},
        {0.20, 0.80, 0.20},
        {1.00, 0.31, 0.31}
    }

    width = love.graphics.getWidth() / 15
    height = love.graphics.getHeight() / 10
end

function love.draw()
    -- for i, value in ipairs(map) do
    --     status = (value == 1)
    --     love.graphics.rectangle(status and 'fill' or 'line', i * 25, 150, 25, 25)
    -- end
    for i, row in ipairs(map) do
        for j, quad in ipairs(row) do
            if quad ~= 0 then
                love.graphics.setColor(0,0,0)
                love.graphics.rectangle('line', (j-1) * width, (i-1) * height, width, height)
                love.graphics.setColor(colors[quad])
                love.graphics.rectangle('fill', (j-1) * width, (i-1) * height, width, height)
            end
        end
    end
end