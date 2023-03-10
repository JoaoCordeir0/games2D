function love.load()
    love.graphics.setBackgroundColor(0,0,1,1)
end

function love.draw()
    love.graphics.line(
        love.math.newBezierCurve(
            150, 150,                      
            200, -50,            
            250, 150            
        ):render()
    )
    love.graphics.line(
        love.math.newBezierCurve(
            250, 150,
            450, 200,
            250, 250
        ):render()
    )
    love.graphics.line(
        love.math.newBezierCurve(
            250, 250,
            200, 450,
            150, 250
        ):render()
    )
    love.graphics.line(
        love.math.newBezierCurve(
            150, 150,
            -50, 200,
            150, 250
        ):render()
    )
    love.graphics.circle(
        'line',
        200,
        200,
        50
    )
end