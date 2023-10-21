local config = {
    Vambora = false
}
local coemeuprot = game.Workspace.Tycoons:GetChildren()
local menoh = 999999999999999999999999999
local meuprot = nil
for i=1,#coemeuprot do
    if(menoh > (coemeuprot[i].TycoonSpawn.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude)then
        menoh = (coemeuprot[i].TycoonSpawn.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude
        meuprot = coemeuprot[i]
    end
end

game:GetService("RunService").RenderStepped:Connect(function()
    if(config.Vambora)then
        local rebirta = game.ReplicatedStorage.Remotes.Rebirth.AttemptRebirth
        rebirta:FireServer()
        local ostrem = meuprot.Structures:GetChildren()
        local acheiporra = nil
        for i=1,#ostrem do
            local cadesaporra = ostrem[i]:GetChildren()
            for j=1,#cadesaporra do
                if(cadesaporra[j].Name == "Collector")then
                    acheiporra = cadesaporra[j].Collider
                    break
                end
            end
            if(acheiporra~=nil)then
                break
            end
        end
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,acheiporra,0)
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,acheiporra,1)
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,meuprot.ActiveButtons:GetChildren()[1].Collider,0)
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,meuprot.ActiveButtons:GetChildren()[1].Collider,1)
    end
end)

local Uai = loadstring(game:HttpGet('https://raw.githubusercontent.com/MalciuK/facilitabilidade/main/newuai.lua'))()
local Window = Uai.CriarJanelaBase("Super Hack do Niquistiniqs",250,500,Color3.new(0.149019, 0.078431, 0.188235))
local Janela = Uai.CriarJanelaFunc(Window,"Croqs mundinho esquisito")
local Togg = Uai.CriarTogg(Janela,"Vambora",function (a) config.Vambora = a end)
local Butt = Uai.CriarButt(Janela,"Fechar Janela",function() Window.Parent:Destroy() config.Vambora = false end)
