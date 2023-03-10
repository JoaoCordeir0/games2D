screean = {} -- Informações da tela gráfica
figure = {}  -- Informações do ciruclo

function love.load()   
    screean.h = love.graphics.getWidth()
    screean.v = love.graphics.getHeight()
    
    figure.width = screean.h * 0.25
    figure.height = screean.v * 0.3
    figure.x = (screean.h - figure.width) / 2
    figure.y = (screean.v - figure.width) / 2   

    love.graphics.setBackgroundColor(1, 0.88, 0.88)    
end

function love.draw()
    love.graphics.rectangle(
        'fill',
        figure.x, 
        figure.y,
        figure.width,
        figure.height
    )
end