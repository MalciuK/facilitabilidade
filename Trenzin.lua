local config = {
    puxaboost = false,
    autoalinhamento = false
}

local Uai = loadstring(game:HttpGet('https://raw.githubusercontent.com/MalciuK/facilitabilidade/main/newuai.lua'))()
local Window = Uai.CriarJanelaBase("Super Hack do Niquistiniqs",250,500,Color3.new(0.388235, 0.388235, 0.388235))
local Janela = Uai.CriarJanelaFunc(Window,"Trenzinho Fodase")
local Togg1 = Uai.CriarTogg(Janela,"Puxa Boost",function (a) config.puxaboost = a end)
local Togg2 = Uai.CriarTogg(Janela,"Alinhar Carrinho",function (a) config.autoalinhamento = a end)
local ButtCoisoa = Uai.CriarButt(Janela,"Fechar Janela",function() Window.Parent:Destroy() end)

local usbust = game.Workspace.Effects
game:GetService("RunService").RenderStepped:Connect(function() 
    if(config.puxaboost)then
        local pinto = usbust:GetChildren()
        for i=1,#pinto do
            if not(pinto[i].Name=="Highlight") then
                pinto[i].Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
            end
        end
    end
    if(config.autoalinhamento)then
        local carrin = game.Workspace.Carts:FindFirstChild(game.Players.LocalPlayer.Name)
        if not(carrin==nil)then
            local ruma = Vector3.new(0,0,0)
            carrin.Root.Rotation = ruma
        end
    end
end)
