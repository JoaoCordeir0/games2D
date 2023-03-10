screean = {} -- Informações da tela gráfica
circle = {}  -- Informações do ciruclo

function love.load()   
    screean.h = love.graphics.getWidth()
    screean.v = love.graphics.getHeight()
    
    circle.raio = screean.v / 2 
    circle.y = (screean.v) / 2
    circle.x = (screean.h) / 2   

    love.graphics.setBackgroundColor(1,0.88,0.88)    
end

function love.draw()
    love.graphics.circle(
        'fill',
        circle.x,
        circle.y,
        circle.raio 
    )            
end