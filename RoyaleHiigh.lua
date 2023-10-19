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
function StartaCom(astring,pedaco)
    return string.sub(astring,1,string.len(pedaco))==pedaco
end
function TerminaCom(astring,pedaco)
    return string.sub(astring,string.len(astring)-string.len(pedaco)+1,string.len(astring))==pedaco
end
local config = {
    GetCandyyy = false,
    DelayMaxPorta = 250
}
print((tonumber("3")), tonumber("3.2"))
local Library = initLibrary()
local Window = Library:Load({
    name = "Super Hack do Niquinistiquiniquis pro Diiii",
    sizeX = 425,
    sizeY = 165,
    color = Color3.fromRGB(255, 255, 255)
})
function  KillMe()
    Window:Hide()
end

local Tab = Window:Tab("Royale Hiiigh")
local Inicio = Tab:Section { name = "Inicio"}

Inicio:Toggle{
    Name="Get Candyyy",
    flag="asdasd",
    callback=function(oq)
        config.GetCandyyy = oq
    end
}

local asporta = game.Workspace.TrickorTreatDoors:GetChildren()
game.Workspace.TrickorTreatDoors.ChildAdded:Connect(function(obj) 
    table.insert(asporta,obj)
end)
local currpor = 1
local delayproxporta = 0
local tolah = false
game:GetService("RunService").RenderStepped:Connect(function()
    if(config.GetCandyyy)then
        local osdoce = game.Workspace.DroppedCandyFolder:GetChildren()
        for i=1,#osdoce do
            if(osdoce[i].Transparency == 0)then
                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,osdoce[i],0)
                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,osdoce[i],1)
            end
        end

        if(delayproxporta==0)then
            print("Checano Porta",currpor)
            local portaatual = asporta[currpor]
            if(#portaatual:GetChildren()>0)then
                if not (tolah) then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = portaatual.DoorPart.CFrame
                    tolah = true
                end
                delayproxporta = config.DelayMaxPorta
                currpor+=1
                if(currpor>#asporta)then
                    currpor=1
                end
                tolah = false
            else
                currpor+=1
                if(currpor>#asporta)then
                    currpor=1
                end
            end

        else
            delayproxporta-=1
        end
        input.press(Enum.KeyCode.E)
    end
end)

Inicio:Button{
    Name = "Fechar UI",
    callback = function()
        config.GetCandyyy = false
        KillMe()
    end
}
