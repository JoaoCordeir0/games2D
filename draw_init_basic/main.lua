-- Desenhar primitivas
function love.load()
  love.graphics.setColor(1,1,1,1)
  love.graphics.setBackgroundColor(0,0,255)
end

function love.draw()
  --[[ 
    Retângulo vazado 
    Origem (300, 150), tamanho (50,50) 
  --]]
  love.graphics.rectangle('line', 300, 120, 180, 100)
  love.graphics.rectangle('line', 100, 220, 500, 100)
  
  --[[
    Desenhando um circulo 
    Centro(200, 300), raio 20
  ]]--
  love.graphics.circle('fill', 200, 300, 50)
  love.graphics.circle('fill', 500, 300, 50)
  
  --Arco: Preenchido, centro(300, 400), raio(100, 36° á 90°)
  love.graphics.arc('fill', 200, 400, 100, 36*math.pi/180, 90*math.pi/180)
  --Arco: Preenchido, centro(450, 400), raio(100, 0º a 180º)
  love.graphics.arc('fill', 450, 400, 100, 0, math.pi)
end