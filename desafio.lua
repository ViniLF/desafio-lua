-- UTF-8
os.execute("chcp 65001")

-- Informações da Criatura
local criatura = {
    nome = "CREEPER",
    descricao = "Um monstro furtivo com temperamento explosivo.",
    emoji = "💥",
    som = "Tssssss",
    horarioFavorito = "Noturno",
    item = "Pólvora",
    atributos = {
        ataque = 10,
        defesa = 1,
        vida = 5,
        velocidade = 7,
        inteligencia = 2
    },
    fraquezas = {
        agua = true,
        distancias = true
    },
    comportamento = "O Creeper é conhecido por se aproximar silenciosamente dos jogadores e explodir quando está perto.",
    historia = "Os Creepers são resultado de experimentos mágicos que deram errado em um laboratório sombrio.",
    drops = {"pólvora", "sílex"}
}

-- Função para obter a barra de progresso de um atributo
local function getProgressBar(attribute)
    local fullChar = "◻️"
    local emptyChar = "◼️"
    local result = ""
    for i = 1, 10 do
        result = result .. (i <= attribute and fullChar or emptyChar)
    end
    return result
end

-- Função para exibir as fraquezas
local function exibirFraquezas(criatura)
    print("| Fraquezas:")
    print("|    Água: " .. (criatura.fraquezas.agua and "Sim" or "Não"))
    print("|    Distâncias: " .. (criatura.fraquezas.distancias and "Sim" or "Não"))
end

-- Função para exibir os drops
local function exibirDrops(criatura)
    print("| Drops:")
    for _, drop in ipairs(criatura.drops) do
        print("|    " .. drop)
    end
end

-- Função para exibir os atributos com barras alinhadas
local function exibirAtributos(criatura)
    print("| Atributos")
    local atributos = criatura.atributos
    local maxLen = 10  -- Tamanho máximo da barra de progresso

    -- Encontra o atributo com o nome mais longo para alinhamento
    local maxNameLen = 0
    for atributo, _ in pairs(atributos) do
        maxNameLen = math.max(maxNameLen, #atributo)
    end

    -- Imprime os atributos com barras de progresso alinhadas
    for atributo, valor in pairs(atributos) do
        local spaces = string.rep(" ", maxNameLen - #atributo + 4)  -- Ajuste para o alinhamento
        print("|    " .. atributo .. ":" .. spaces .. getProgressBar(valor))
    end
end

-- Função para imprimir o cartão com informações extras
local function imprimirCartaoComInformacoesExtras(criatura)
    print("==================================================")
    print("| " .. criatura.nome)
    print("| " .. criatura.descricao)
    print("| ")
    print("| Emoji Favorito: " .. criatura.emoji)
    print("| Som: " .. criatura.som)
    print("| Horário Favorito: " .. criatura.horarioFavorito)
    print("| Item: " .. criatura.item)
    print("| ")
    exibirAtributos(criatura)
    print("| ")
    print("| Comportamento: " .. criatura.comportamento)
    print("| História: " .. criatura.historia)
    exibirFraquezas(criatura)
    exibirDrops(criatura)
    print("==================================================")
end

-- Imprime o cartão com informações extras
imprimirCartaoComInformacoesExtras(criatura)
