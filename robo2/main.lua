  -- Animação combinada rotação e escala
  local ang = 0
  
  function love.load()
    robo = love.graphics.newImage('robo.png')
  end
  
  function love.draw()
    love.graphics.draw(
      robo,
      x,
      y,
      rot,
      ex,
      ey,
      301,
      301
    )
  end
  
  function love.update(dt)
    ang = ang + 0.5 * dt
    x, y = 400 + math.cos(ang), 300 + math.sin(ang)
    rot = ang * 180 / math.pi 
    ex = math.cos(ang)
    ey = math.sin(ang)
  end