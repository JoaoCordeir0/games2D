-- Primitivas mais complexas 
function love.load()
  love.graphics.setColor(1,1,0,1)
  love.graphics.setBackgroundColor(0,0,255)
end

function love.draw()
  -- Triângulo com linhas
  --                  X1   Y1   X2   Y2   X3   Y3   X4   Y4 
  love.graphics.line(100, 200, 150, 100, 200, 200, 100, 200)
  
  --        X1   Y1   X2   Y2   X3   Y3   X4   Y4 
  pontos = {200, 50, 350, 50, 350, 150, 450, 150}
  love.graphics.line(pontos)
  
  --Elipse: Vazada, origem(200, 400), raios(70, 50)
  love.graphics.ellipse('line', 200, 400, 70, 50)
  
  --Elipse: Preenchida, origem(400, 400), raios(70, 40), 10 seguimentos
  love.graphics.ellipse('fill', 400, 400, 75, 40, 10)  
  
  --Poligono: pelos cantos ou vértices
  cantos = {500, 100, 600, 100, 550, 200}
  love.graphics.polygon('fill', cantos)
end