-- Coletar informações de texto
function love.load()
    texto = "Mensagem a ser apresentada"
    --1) Usando a fonte padrão
    --fonte = love.graphics.getFont()
    --2) Usando a fonte padrão com tamanho especifico
    --fonte = love.graphics.newFont(25)
    --3) Usando fonte e tamanho especifico
    fonte = love.graphics.newFont('planetkosmos.ttf',20)
    -- Calcular o espaço ocupado pela mensagem usando a fonte
    tamanho = fonte:getWidth(texto)
end
  
function love.draw()
    love.graphics.setFont(fonte)
    love.graphics.print(texto,200,200)
    love.graphics.print(tamanho,400,500)
end
 