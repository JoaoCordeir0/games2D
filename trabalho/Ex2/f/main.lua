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
end