screan = {} -- Informações da tela gráfica
circle = {}  -- Informações do ciruclo

function love.load()   
    screan.h = love.graphics.getWidth()
    screan.v = love.graphics.getHeight()
    
    circle.raio = screan.v / 2 
    circle.y = (screan.v) / 2
    circle.x = (screan.h) / 2   

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