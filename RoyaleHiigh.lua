local Uai = loadstring(game:HttpGet('https://raw.githubusercontent.com/MalciuK/facilitabilidade/main/newuai.lua'))()
local input = loadstring(game:HttpGet('https://pastebin.com/raw/dYzQv3d8'))()
local config = {
    GetCandyyy = false,
    DelayMaxPorta = 250
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


local Window = Uai.CriarJanelaBase("Super Hack do Niquistiniqs pro Dii",250,500,Color3.new(0.149019, 0.078431, 0.188235))
local Janela = Uai.CriarJanelaFunc(Window,"Royaleeee Altoooooo")
local Togg = Uai.CriarTogg(Janela,"Pegar Docinhos",function (a) config.GetCandyyy = a end)
local Butt = Uai.CriarButt(Janela,"Fechar Janela",function() Window.Parent:Destroy() end)
