loadstring(game:HttpGet('https://raw.githubusercontent.com/1uaxx/yunv2/main/librarysource.lua'))()
local input = loadstring(game:HttpGet('https://pastebin.com/raw/dYzQv3d8'))()
function GetObject(Astring)
    local ospedaco = Astring:split(".")
    local manda = game
    for i=1,#ospedaco do
        manda = manda:FindFirstChild(ospedaco[i])
    end
    return manda
end
local config = {
    meuplot = nil,
    feed = false
}

local Library = initLibrary()
local Window = Library:Load({
    name = "Super Hack do Niquinistiquiniquis",
    sizeX = 425,
    sizeY = 165,
    color = Color3.fromRGB(200, 1, 200)
})
function  KillMe()
    Window:Hide()
end

local Tab = Window:Tab("Cat Feeding Simulator")
local Inicio = Tab:Section { name = "Inicio"} 

local pair = Inicio:Button{
    Name="Atualiza Plot",
    callback=function()
        PegaPlot()
    end
}

function MontaOResto()
    Inicio:Toggle{
        Name="Auto Feed Gatin",
        flag="autofeed",
        callback=function(q)
            config.feed = q
        end
    }
    
    game:GetService("RunService").RenderStepped:Connect(function()
        if(config.feed)then
            local Plots = game.Workspace.Plots:GetChildren()
            for i=1,#Plots do
                local CoaisProts = Plots[i]:GetChildren()
                for j=1,#CoaisProts do
                    if(CoaisProts[j].Name == "Plot")then  
                        local PastaFode = CoaisProts[j]:GetChildren()
                        for k=1,#PastaFode do
                            if(PastaFode[k].Name == "Int_Pickups")then
                                local asfode = PastaFode[k]:GetChildren()
                                if(#asfode>0)then
                                    for l=1,#asfode do
                                        local miasfode = asfode[l]:GetChildren()
                                        if(#miasfode>0)then
                                            local XUxa = miasfode[1]:GetChildren()
                                            for m=1,#XUxa do
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = XUxa[m].CFrame
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end)
    
    
    
    
    
    function MudaVelocidade(q)
        if(q==1)then game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16 end
        if(q==2)then game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 30 end
        if(q==3)then game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 60 end
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16*q
    end
    Inicio:Slider{
        Name = "Velocidade",
        Default = 1,
        Min = 1,
        Max = 3.75,
        Decimals = 2,
        Flag = "walkspeed",
        callback = function(value)
            MudaVelocidade(value)
        end
    }
    Inicio:Button{
        Name = "Fechar UI",
        callback = function()
            KillMe()
        end
    }
end

function PegaPlot()
    local osplot = game.Workspace.Plots:GetChildren()
    for i=1,#osplot do
        local oiascumida = osplot[i]:WaitForChild("Plot"):WaitForChild("Int_Pickups"):GetChildren()
        if(#oiascumida>0) then
            if(#oiascumida[1]:GetChildren()>0)then
                config.meuplot = osplot[i]
                pair:Hide()
                MontaOResto()
            end
        end
    end
end

