function love.load()
    love.graphics.setBackgroundColor(0,0,1,1)
end

function love.draw()
    love.graphics.line(
        100, 100,
        300, 100
    )
    love.graphics.line(
        100, 200,
        300, 200
    )
    love.graphics.circle(
        'line',
        100,
        125,
        25
    )
    love.graphics.circle(
        'line',
        300,
        175,
        25
    )    
    love.graphics.line(
        love.math.newBezierCurve(
            300, 100,
            325, 100,
            335, 125,
            325, 150,
            300, 150            
        ):render()
    )
    love.graphics.line(
        love.math.newBezierCurve(
            100, 150,
            75, 150,
            65, 175,
            75, 200,
            100, 200            
        ):render()
    )
end