local config = {
    morto = false,
    rastreia = false
}
local Uai = loadstring(game:HttpGet('https://raw.githubusercontent.com/MalciuK/facilitabilidade/main/newuai.lua'))()
local Window = Uai.CriarJanelaBase("Super Hack do Niquistiniquis",250,500,Color3.new(0.078431, 0.078431, 0.188235))
local Janela = Uai.CriarJanelaFunc(Window,"Rastreador")
local Togg = Uai.CriarTogg(Janela,"Bora",function (a) config.rastreia = a end)
local Butt = Uai.CriarButt(Janela,"Fechar Janela",function() Window.Parent:Destroy() config.rastreia = false; config.morto = true end)

local gen1 = nil
local gen2 = nil

function gria(donde,papi)
    gen1 = Instance.new("SurfaceGui")
    gen1.Name="RastreadorDoNiques"
    gen1.AlwaysOnTop=true
    gen1.Face=donde
    gen1.Parent=papi
    gen2 = Instance.new("Frame")
    gen2.Parent=gen1
    gen2.Size = UDim2.new(1, 0, 1, 0)  
    gen2.BackgroundColor3 = Color3.new(0, 0, 0)
    gen2.BorderColor3 = Color3.new(1, 0.650980, 0)
    gen2.BorderSizePixel = 25
    gen2.BackgroundTransparency = 0.5
end


game:GetService("RunService").RenderStepped:Connect(function() 
    if not config.morto then
        if config.rastreia then
            local oscara = game.Players:GetChildren()
            for i=1,#oscara do
                local ocaradaves = oscara[i]
                if not (ocaradaves.Name == game.Players.LocalPlayer.Name) then
                    local aspeca = ocaradaves.Character:GetChildren()
                    for i=1,#aspeca do
                        if(aspeca[i].ClassName=="MeshPart") then
                            if not aspeca[i]:FindFirstChild("RastreadorDoNiques") then
                                gria(Enum.NormalId.Top,aspeca[i])
                                gria(Enum.NormalId.Right,aspeca[i])
                                gria(Enum.NormalId.Left,aspeca[i])
                                gria(Enum.NormalId.Front,aspeca[i])
                                gria(Enum.NormalId.Bottom,aspeca[i])
                                gria(Enum.NormalId.Back,aspeca[i])
                            end
                        end
                    end
                end
            end
        else
            local oscara = game.Players:GetChildren()
            for i=1,#oscara do
                local ocaradaves = oscara[i]
                if not (ocaradaves.Name == game.Players.LocalPlayer.Name) then
                    local aspeca = ocaradaves.Character:GetChildren()
                    for i=1,#aspeca do
                        if(aspeca[i].ClassName=="MeshPart") then
                            if aspeca[i]:FindFirstChild("RastreadorDoNiques") then
                                aspeca[i]:FindFirstChild("RastreadorDoNiques"):Destroy()
                            end
                        end
                    end
                end
            end
        end
    end

end)
