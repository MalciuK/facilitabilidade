local input = loadstring(game:HttpGet('https://pastebin.com/raw/dYzQv3d8'))()
local config = {
    vai = false
}
local Uai = loadstring(game:HttpGet('https://raw.githubusercontent.com/MalciuK/facilitabilidade/main/newuai.lua'))()
local Window = Uai.CriarJanelaBase("Super Hack do Niquistiniquis",250,500,Color3.new(0.078431, 0.078431, 0.188235))
local Janela = Uai.CriarJanelaFunc(Window,"BreideBalljkkjjjjkkkkk")
local Togg = Uai.CriarTogg(Janela,"AutoParrykkkk",function (a) config.vai = a end)
local Butt = Uai.CriarButt(Janela,"Fechar Janela",function() Window.Parent:Destroy() config.vai = a end)
local slamano = {}

game.Workspace.Balls.ChildAdded:Connect(function()
    slamano = {}
    local oscoiso = game.Workspace.Balls:GetChildren()
    for i=1,#oscoiso do
        local oscoiso2 = oscoiso[i]:GetChildren()
        for j=1,#oscoiso2 do
            if(oscoiso2[j].ClassName=="LinearVelocity") then
                table.insert(slamano,oscoiso2[j])
                break
            end
        end
        if(#slamano>0)then
            break
        end
    end
end)

game:GetService("RunService").RenderStepped:Connect(function()
    if(config.vai)then
        local vetorial = true
        if(vetorial)then
            local velocidade = slamano[1].VectorVelocity/2
            local ondeeuto = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
            local ondeelata = slamano[1].Parent.Position
            local pontofuturo = ondeelata+velocidade
            local disttrue = 0

            local anguloentreeubolaepotofuturofds = (((ondeelata-ondeeuto)*(pontofuturo-ondeeuto)).X+((ondeelata-ondeeuto)*(pontofuturo-ondeeuto)).Y+((ondeelata-ondeeuto)*(pontofuturo-ondeeuto)).Z)/((ondeelata-ondeeuto).Magnitude*(pontofuturo-ondeeuto).Magnitude)
            if(anguloentreeubolaepotofuturofds<=0)then --ANGULO ENTRE O VETOR
                --Equação fudida:
                local vetorbolapotofuturo = velocidade
                local vetorbolaeu = ondeeuto-ondeelata
                --areadessaporra é o modulo da multiplicação vetorial... demonio...
                local tedois = vetorbolaeu
                local teum = vetorbolapotofuturo
                local areadessasporra = Vector3.new((teum.Y*tedois.Z)-(tedois.Y*teum.Z),(teum.Z*tedois.X)-(tedois.Z*teum.X),(teum.X*tedois.Y)-(tedois.X*teum.Y)).Magnitude
                local distanciadalinhadopercussodabola=areadessasporra/vetorbolapotofuturo.magnitude
                disttrue = distanciadalinhadopercussodabola
            else
                local distanciafutura = (ondeeuto-pontofuturo).magnitude
                disttrue = distanciafutura
            end
            
            -- game.Workspace.Especulaador.CFrame = CFrame.new(pontofuturo)
            -- game.Workspace.Especulaador:GetChildren()[1].CFrame = CFrame.new(ondeeuto-Vector3.new(0,3,0))
            -- game.Workspace.Especulaador:GetChildren()[1].Size = Vector3.new(disttrue*2,1,disttrue*2)
            if(game.Workspace.Balls:GetChildren()[2].Color.r == 1)then
                local distanciaminima = 30
                if(disttrue<=distanciaminima or (ondeelata-ondeeuto).magnitude<=distanciaminima)then
                    input.press(Enum.KeyCode.F)
                end
            end
        else
            local velocidade = slamano[1][2].VectorVelocity.magnitude
            local distancia = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-slamano[1][2].Parent.Position).magnitude
            slamano[1][1].Text = string.format("Velocidade: %.5f", velocidade)
            Butt.Text = string.format("Distancia: %.5f", distancia)
            if(game.Workspace.Balls:GetChildren()[2].Color.r == 1)then
                Butt.Text = "VOCE"
                local distanciaminima = -15
                if(distancia-velocidade<=distanciaminima)then
                    input.press(Enum.KeyCode.F)
                end
            end
        end
    end
end)
