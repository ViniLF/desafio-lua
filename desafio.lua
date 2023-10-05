--[[

Nome da criatura
Descrição
Som que faz
Atributos
    Ataque
    Defesa
    Vitalidade
    Velocidade
    Inteligência
    Mobilidades
    Furtividade
    Explosão

--------------------------------------------------
/
/ CREEPER
/ Um monstro muito sagaz que explode na sua cara.
/
/ som: Issssss
/
/ Atributos:
/   Ataque: ########
/   Defesa: ########
/   ...
/
--------------------------------------------------


]]

-- UTF-8
os.execute("chcp 65001")

-- Criatura
local monsterName = "CREEPER"
local description = "Um monstro furtivo com temperamento explosivo."
local emoji = "💥"
local sound = "Tssssss"
local favoriteTime = "Noturno"
local item = "Pólvora"

-- Atributos
local attackAttribute = 10
local defenseAttribute = 1
local lifeAttribute = 5
local speedAttribute = 7
local inteligenceAttribute = 2
-- função que recebe um atributo e nos retorna uma barra de progresso em string / texto
local function getProgressBar(attribute)
    local fullChar = "◻️"
    local emptyChar = "◼️"
     
    local result = ""
    for i = 1, 10, 1 do
        if i <= attribute then
            result = result .. fullChar
        else
            result = result .. emptyChar
        end
    end

    return result
end

-- Cartão
print("==================================================")
print("| " .. monsterName)
print("| " .. description)
print("| ")
print("| Emoji Favorito: " .. emoji)
print("| Som: " .. sound)
print("| Horário Favorito: " .. favoriteTime)
print("| Item: " .. item)
print("| ")
print("| Atributos")
print("|    Ataque:       " .. getProgressBar(attackAttribute))
print("|    Defesa:       " .. getProgressBar(defenseAttribute))
print("|    Vida:         " .. getProgressBar(lifeAttribute))
print("|    Velocidade:   " .. getProgressBar(speedAttribute))
print("|    Inteligência: " .. getProgressBar(inteligenceAttribute))
print("| ")
print("==================================================")