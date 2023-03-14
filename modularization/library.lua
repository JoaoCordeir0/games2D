-- Série de funções personalizadas

-- Função que exibe um texto no centro da tela
function txtCenter(txt)
  local widthH = 0
  local widthV = 0
  local midlleX = 0
  local midlleY = 0
  
  fonte = love.graphics.newFont(20)
  
  widthH = fonte:getWidth(txt)
  widthV = fonte:getHeight(txt)
  midlleX = (love.graphics.getWidth() - widthH) / 2
  midlleY = (love.graphics.getHeight() - widthV ) / 2
  
  love.graphics.setFont(fonte)
  love.graphics.print(txt, math.ceil(midlleX), math.ceil(midlleY))
end

-- Função que altera a cor 
function setColor(R, G, B)
  love.graphics.setColor(R, G, B, 1)
end

-- Função que exibe uma linha pontilhada
function lineDoted(x1, y1, x2, y2)
  local dx, dy = x2 - x1, y2 - y1
  local width = math.sqrt(dx^2 + dy^2)
  local px, py = dx / width, dy / width
  local vx, vy = {0, 0}
  
  dx = x1
  dy = y1
  
  if px == 0 then
    vx = 0
  else
    vx = 5
  end 
  
  if py == 0 then
    vy = 0
  else 
    vy = 5
  end 
  
  for i = 1, width do
    love.graphics.points(dx, dy)
    dx = dx + px + vx
    dy = dy + py + vy
  end
end

-- Função que faz uma linha tracejada
function lineDashed(x1, y1, x2, y2)
  local trace = 10
  local jump = 10
  local verify = math.abs(y2 - y1) > math.abs(x2 - x1)
  
  if verify then
    x1, y1 = y1, x1
    x2, y2 = y2, x2  
  end
  
  if x1 > x2 then
    x1, x2 = x2, x1
    y1, y2 = y2, y1
  end
  
  local dx, dy = (x2 - x1), math.abs(y2 - y1)
  local erro = dx / 2
  
  local py = (y1 < y2) and 1 or -1
  local y = y1
  local maxX = x2
  local pxCount = 0
  local eTrace = true
  local lastA, lastB, A, B
  
  for x = x1, maxX do 
    pxCount = pxCount + 1
    
    if (eTrace and pxCount == trace) or (not eTrace and pxCount == jump) then
      pxCount = 0
      eTrace = not eTrace
      A = verify and y or x
      B = verify and x or y
      if lastA then
        love.graphics.line(lastA, lastB, A, B)
        lastA = nil
        lastB = nil
      else
        lastA = A
        lastB = B
      end
    end
    erro = erro - dy
    if erro < 0 then
      y = y + py
      erro = erro + dx
    end
  end
end