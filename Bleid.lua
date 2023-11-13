local Workspace = game:GetService("Workspace")
local input = loadstring(game:HttpGet('https://pastebin.com/raw/dYzQv3d8'))()
local config = {
    vai = false,
    trava = false,
    trava2 = false,
}
local Uai = loadstring(game:HttpGet('https://raw.githubusercontent.com/MalciuK/facilitabilidade/main/newuai.lua'))()
local Window = Uai.CriarJanelaBase("Super Hack do Niquistiniquis",250,500,Color3.new(0.078431, 0.078431, 0.188235))
local Janela = Uai.CriarJanelaFunc(Window,"BreideBalljkkjjjjkkkkk")
local Togg = Uai.CriarTogg(Janela,"AutoParrylixo",function (a) config.vai = a end)
local Butt = Uai.CriarButt(Janela,"Fechar Janela",function() Window.Parent:Destroy() config.vai = a end)
local slamano = {}

game.Workspace.Balls.ChildAdded:Connect(function()
    config.trava = false
    config.trava2 = false
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
local contasaporra = 0
game:GetService("RunService").RenderStepped:Connect(function()
    if(config.vai)then
        local vetorial = true
        if(vetorial)then
            if(game.Workspace.Balls:GetChildren()[2].Color.r == 1)then
                local ondeeuto = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                local ondeelata = slamano[1].Parent.Position
                local distanciaminima = 30
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

                if(disttrue<=distanciaminima and config.trava2 == false)then
                    config.trava2 = true
                    input.press(Enum.KeyCode.F)
                end
            else
                config.trava2 = false
                config.trava = false
            end
        end
    end

end)
