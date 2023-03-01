-- Coletando informações do computador do usuário
function love.load()
    -- Personalização da fonte
    fonte = love.graphics.newFont(16)
    love.graphics.setFont(fonte);
    
    -- Retorna a largura e altura da "tela" (resolução)
    local l, a, flags = love.window.getMode()
    
    so = love.system.getOS()
    
    largura,altura = love.window.getDesktopDimensions(flags.display)
    
    larg_janela = love.graphics.getWidth()
    
    alt_janela = love.graphics.getHeight()
end
  
function love.draw()
    love.graphics.print("Sistemas operacional:" .. so,100,100)
    love.graphics.print("Resolução do monitor do usuário", 100,120)
    love.graphics.print("\t Largura: " .. largura .. " Altura: " .. altura,110,140)
    love.graphics.print("Resolução da janela do jogo", 100,160)
    love.graphics.print("Largura: " .. larg_janela .. " Altura: " .. alt_janela,110,180)
  
    -- Coletar a posição do mouse na tela
    local x, y = love.mouse.getPosition()
    love.graphics.print("x: " .. x .. " y: " .. y, 400,50)
end
  
  