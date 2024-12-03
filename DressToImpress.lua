local input = loadstring(game:HttpGet('https://pastebin.com/raw/dYzQv3d8'))()
local Uai = loadstring(game:HttpGet('https://raw.githubusercontent.com/MalciuK/facilitabilidade/main/newuai.lua'))()

local config = {
    working = true,
    dindin = false,
    render = nil,
    delayjump = 300
}

local Window = Uai.CriarJanelaBase("Super Hack do Niquistiniqs",250,250,Color3.new(0.478431, 0.623529, 0.407843),function() config.working=false config.grudaplayer = "None" end)
local Janela = Uai.CriarJanelaFunc(Window,"VestirParaImpressionaarrr")
local Togg = Uai.CriarTogg(Janela,"PegaDindin",function(a) config.dindin=a end)
local Butt = Uai.CriarButt(Janela,"Fechar Janela",function() Window.Parent:Destroy() config.working=false end)

config.render = game:GetService("RunService").RenderStepped:Connect(function()
    if (config.working) then
        if config.dindin then
            game.Players.LocalPlayer.Character.HumanoidRootPart.AssemblyAngularVelocity = Vector3.zero
            game.Players.LocalPlayer.Character.HumanoidRootPart.AssemblyLinearVelocity = Vector3.zero
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.FallingDown)
            if(config.delayjump>0)then
                config.delayjump = config.delayjump-1
            else
                config.delayjump = 300
                input.press(Enum.KeyCode.Space)
            end

            local dinheiros = game.Workspace.CollectibleMoney:GetChildren()
            local pare = false
            for i=1, #dinheiros do
                if not(pare)then
                    local dinheiro = dinheiros[i]
                    if(dinheiro.DecalFront.Transparency == 0)then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(dinheiro.Position,dinheiro.Position-Vector3.new(0,2,0))
                        pare=true
                        -- dinheiro.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                        -- firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,dinheiro.TouchInterest,0)
                        -- task.wait(1)
                        -- firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,dinheiro.TouchInterest,1)
                    end
                end
            end
            if not(pare)then
                local obbys = game.Workspace:GetChildren()
                for i=1, #obbys do
                    if not (obbys[i].Name:match("Obby",0)==nil)then
                        local obbymoney = obbys[i].Money:GetChildren()
                        for j=1, #obbymoney do
                            if not(pare)then
                                local dinheiro = obbymoney[j]
                                if(dinheiro.DecalFront.Transparency == 0)then
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(dinheiro.Position,dinheiro.Position-Vector3.new(0,2,0))
                                    pare=true
                                    -- dinheiro.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                                    -- firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,dinheiro.TouchInterest,0)
                                    -- task.wait(1)
                                    -- firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,dinheiro.TouchInterest,1)
                                end
                            end
                        end
                    end
                end
            end
            if not(pare) then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(0,0,0),Vector3.new(0,-1,0))
            end
        end
    else
        config.render:Disconnect()
    end
end)
