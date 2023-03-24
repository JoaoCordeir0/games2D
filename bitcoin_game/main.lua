-- Trabalhando com persistência (Salvar e Carregar)
-- Definindo atalhos
local LG = love.graphics
local KD = love.keyboard.isDown

-- Biblioteca para serialização dos dados para salvar e carregar
lume = require('lume')

-- Variáveis globais: Estrutura do jogo
character = {} -- Personagem
wallet = {} -- Carteira
wingame = false
loadgame = false

function love.load()    
    Start()
end

function love.draw()
    -- Instruções na tecla
    LG.setFont(LG.newFont(14))  
    LG.print("Teclas de controle: [S]alvar, [C]arregar e [R]einiciar", 5, 5)
    LG.printf("FPS: " .. tostring(love.timer.getFPS( )), 5, 5, LG.getWidth() - 10, "right")
    
    LG.draw(
        character.img,
        character.x,
        character.y,
        0,
        character.scale,
        character.scale,
        character.img:getWidth() / 2,
        character.img:getHeight() / 2
    )

    if not wingame then
        for c, actual in ipairs(wallet) do
            LG.draw(
                actual.img,
                actual.x,
                actual.y,
                0,
                1,
                1,
                actual.img:getWidth() / 2,
                actual.img:getHeight() / 2
            )
        end
    else 
        txt = "Você venceu! Pressione R para reiniciar"
        font = LG.newFont(30)
        tx, ty = (LG.getWidth() - font:getWidth(txt)) / 2, (LG.getHeight() - font:getHeight(txt)) / 2
        LG.setFont(font)
        LG.print(txt, tx, ty)
    end 
end

function love.update(dt)
    -- Movimentação do coletor
    if KD('r') and wingame then
        Start()
    end
    if KD('escape') then
        love.event.quit()
    end

    -- Dinâmica do jogo
    if not wingame then
        -- Movimentação para direita e esquerda
        if KD('left') and character.x > character.width / 2 then
            character.x = character.x - character.speed * dt
        elseif KD('right') and character.x < LG.getWidth() - character.width / 2 then
            character.x = character.x + character.speed * dt
        end

        -- Movimentação para cima e para baixo
        if KD('up') and character.y > character.width / 2 then
            character.y = character.y - character.speed * dt
        elseif KD('down') and character.y < LG.getHeight() - character.width / 2 then
            character.y = character.y + character.speed * dt
        end
    end
    
    -- Verifica a colisão e remove a moeda
    -- Mal pratica - erro proposital
    -- for c, actual in ipairs(wallet) do
    --     if haveCollision(character, actual) then
    --         table.remove(wallet, c)
    --         character.scale = character.scale + 0.1
    --         character.width = 50 * character.scale
    --     end
    -- end    
    
    -- Verifica a colisão da forma correta
    for c = #wallet, 1, -1 do
        if haveCollision(character, wallet[c]) then
            table.remove(wallet, c)
            character.scale = character.scale + 0.1
            character.width = 50 * character.scale

            wingame = (#wallet == 0)
        end
    end
end

-- Funções de salvar, recarregar e reiniciar
function love.keypressed(bind)
    if bind == 's' then
        print("Salvar")
        Save()
    end
    if bind == 'c' then
        print("Carregar")
        loadgame = true
        Start()
    end
    if bind == 'r' then
        print("Reiniciar")
        loadgame = false
        love.filesystem.remove("savegame.txt")
        love.event.quit("restart")
    end
end

-- Funções personalizadas
function Start()
    character = {x = 30, y = 50, width = 50, scale = 1, img = nill, speed = 200}
    character.img = LG.newImage("coletor.png")

    wallet = {}
    math.randomseed(os.time())
    if not loadgame then
        for c = 1, 25 do 
            table.insert(wallet, {
                x = math.random(50, LG.getWidth() - 50),
                y = math.random(50, LG.getHeight() - 50),
                img = LG.newImage("bitcoin.png"),
                width = 25
            })
        end
    else 
        Reload()
    end 
end

function haveCollision(p1, p2)
    -- Calcular a distância centro a centro
    local distance = math.sqrt((p1.x - p2.x)^2 + (p1.y - p2.y)^2)
    
    -- Verifica a colisão
    return distance < (p1.width + p2.width) / 2
end

-- Funções de persistência
function Save()
    gameData = {}
    gameData.character = {
        x = character.x,
        y = character.y,
        width = character.width,
        scale = character.scale
    }

    gameData.wallet = {}
    for c, actual in ipairs(wallet) do
        gameData.wallet[c] = {
            x = actual.x,
            y = actual.y,
            width = actual.width
        }
    end

    -- Apenas para verificação
    print(gameData)

    -- Serialização dos dados para salvar
    serialize = lume.serialize(gameData)

    -- Local padrão de salvamento do LOVE: %appdata%\LOVE\
    love.filesystem.write('savegame.txt', serialize)
end

function Reload()
    if love.filesystem.getInfo('savegame.txt') then
        file = love.filesystem.read('savegame.txt')

        -- Desearilizar os dados salvos
        gameData = lume.deserialize(file)

        -- Carrega o personagem
        character.x = gameData.character.x
        character.y = gameData.character.y
        character.width = gameData.character.width
        character.scale= gameData.character.scale

        -- Carregar a carteira com as moedas restantes
        wallet = {}
        for c, actual in ipairs(gameData.wallet) do
            wallet[c] = {
                x = actual.x,
                y = actual.y,
                width = actual.width,
                img = love.graphics.newImage('bitcoin.png')
            }
        end
    end
end