--Trabalhar com textos
--\n - quebra da linha
--\t - tabulação
--\\ - caractere
function love.load()
  --fonte = love.graphics.newFont(20)
  fonte = love.graphics.newFont('planetkosmos.ttf',20)
end

function love.draw()
  love.graphics.setFont(fonte)
  --love.graphics.print("Texto para usuário", 200,200)
  -- x, y, limite, modo de alinhamento ['left','right','center']
  love.graphics.printf("Texto para o usuário", 200,200,100,'left')
end
