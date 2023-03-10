function love.load()    
    love.graphics.setBackgroundColor(0,0,1,1)    
end

function love.draw()
    -- Execício 2.a
    love.graphics.line(
        150, 50, 
        200, 50 
    )
    love.graphics.line(
        150, 50, 
        50, 150 
    )  
    love.graphics.line(
        50, 150, 
        50, 250 
    )      
    love.graphics.line(
        50, 250, 
        150, 200 
    )     
    love.graphics.line(
        150, 200, 
        150, 150 
    )     
    love.graphics.line(
        150, 150, 
        200, 100 
    )     
    love.graphics.line(
        200, 100, 
        200, 50 
    )     
    -- Fim

    -- Exercício 2.b
    love.graphics.line(
        450, 50,
        350, 100
    )     
    love.graphics.line(
        450, 50,
        600, 200
    )   
    love.graphics.line(
        600, 200,
        600, 250
    )   
    love.graphics.line(
        600, 250,
        500, 300
    )   
    love.graphics.line(       
        500, 300,
        350, 150
    )
    love.graphics.line(       
        500, 300,
        350, 150
    )
    love.graphics.line(              
        350, 100,
        350, 150
    )
    love.graphics.line(       
        500, 250,
        500, 300
    )
    love.graphics.line(       
        600, 200,
        500, 250
    )
    love.graphics.line(       
        350, 100,
        500, 250
    )
    love.graphics.line(
        450, 50,
        450, 100
    )
    love.graphics.line(
        450, 100,
        350, 150
    )
    love.graphics.line(
        450, 100,
        600, 250
    )
    -- Fim

    -- Exercício 2.c    
    love.graphics.circle(
        'line', 
        850, 
        200, 
        100
    )
    love.graphics.line(
        850, 100,
        850, 200
    )
    love.graphics.line(
        love.math.newBezierCurve(
            850, 200,
            900, 200,            
            925, 250,
            900, 300,            
            850, 300            
        ):render()
    )    
    -- Fim

    -- Exercício 2.d
    love.graphics.rectangle(
        'line',
        50, 350,
        300, 300
    )
    love.graphics.rectangle(
        'line',
        150, 350,
        100, 50
    )
    love.graphics.circle(
        'line', 
        200, 
        500, 
        50
    )
    -- Fim    
end