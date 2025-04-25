-- ndr soft for nether wart collect --

-- pace 4 soulsand around turtle , no fuel needed
-- 1 nether wart needed for start
 
local a = 0
local b = 900

function dig()

turtle.select(1)
turtle.dig()
turtle.place()
turtle.turnLeft()

end

function full()
turtle.select(15)
if turtle.getItemCount() > 63 then
pause(36000)
else
turtle.select(1)
return
end

end

function main()
print("step1")
for a = 1,4 do
full()
dig()
end
print("step2")
wait()
a = 0
end

function wait()
for b = 900,1,-1 do
sleep(1)
term.clear()
term.setCursorPos(0,0)
term.write("il reste :",'b', "secondes avant le prochain cycle.")
term.write(b)
end
b = 0
end

local function decompte(duree)
    local largeur_barre = 50  -- Largeur de la barre de progression
    local temps_total = duree

    for i = temps_total, 1, -1 do
        local pourcentage = (temps_total - i) / temps_total
        local barre = string.rep("=", math.floor(pourcentage * largeur_barre)) .. string.rep(" ", largeur_barre - math.floor(pourcentage * largeur_barre))
        term.clearLine()
        term.setCursorPos(1, 1)
        term.write("Temps restant: " .. i .. "s [" .. barre .. "] " .. math.floor(pourcentage * 100) .. "%")
        sleep(1)
    end

    term.clearLine()
    term.setCursorPos(1, 1)
    term.write("Décompte terminé!")
end

-- Appel de la fonction avec un décompte de 900 secondes
-- decompte(900)

while true do
main()
decompte(900)
end
