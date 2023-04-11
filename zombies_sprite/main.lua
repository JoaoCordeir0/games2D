-- Animação com ladrilhos gerados automaticamente

local LG = love.graphics

function love.load()
    LG.setBackgroundColor(1,1,1)
    animation = generateAnimation(LG.newImage('zombie.png'), 430, 519, 1)    
end

function love.draw()
    pos = math.floor(animation.time / animation.duration * #animation.quads) + 1 -- #animation.quads = len(animation.quads)
    
    LG.draw(animation.img, animation.quads[pos], 80, 10, 0, 1)
end

function love.update(dt)
    animation.time = animation.time + dt
    if animation.time >= animation.duration then
        animation.time = animation.time - animation.duration
    end
end

function generateAnimation(image, width, height, duration)
    animation = {}
    animation.img = image
    animation.quads = {}

    for y = 0, image:getHeight() - height, height do 
        for x = 0, image:getWidth() - width, width do 
            table.insert(animation.quads, LG.newQuad(x, y, width, height, image:getDimensions()))
        end        
    end

    animation.duration = duration or 1 -- Caso a duração não seja passado por parametro seta 1
    animation.time = 0
    
    return animation
end 
