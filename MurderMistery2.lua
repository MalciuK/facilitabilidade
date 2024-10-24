local Workspace = game:GetService("Workspace")
local input = loadstring(game:HttpGet('https://pastebin.com/raw/dYzQv3d8'))()   
local config = {
    working = true,
    revela = false,
    reveladores = {},
    render = false,
    vaipegano2 = false,
    topegano = false,
    oldg = game.Workspace.Gravity
}
local Uai = loadstring(game:HttpGet('https://raw.githubusercontent.com/MalciuK/facilitabilidade/main/newuai.lua'))()
local Window = Uai.CriarJanelaBase("Super Hack do Niquistiniqs",250,250,Color3.new(0.623529, 0.494117, 0.494117),function() config.working=false end)
local Janela = Uai.CriarJanelaFunc(Window,"Murder Mistery")
local Togg = Uai.CriarTogg(Janela,"Revelar",function (a) config.revela = a end)
local Togg = Uai.CriarTogg(Janela,"AutoFarm",function (a) config.vaipegano2 = a end)
-- local Togg = Uai.CriarTogg(Janela,"Vaipegano",function (a) config.vaipegano = a if(a)then CataMoeda() end end)
-- local Togg = Uai.CriarTogg(Janela,"Vaipegano2",function (a) config.vaipegano2 = a end)

function AntiColisores(pai)
    local filhos = pai:GetChildren()
    for k=1, #filhos do
        if (filhos[k].ClassName == "Part" or filhos[k].ClassName == "BasePart" or filhos[k].ClassName == "MeshPart")then
            filhos[k].CanCollide = false
        end
        local fisdofi = filhos[k]:GetChildren()
        if(#fisdofi>0)then
            AntiColisores(filhos[k])
        end
    end
end

function revelaparte(pai,cor)
    local bgcor = cor
    local transparencia = 0.75
    
    local novorastreadorsg = Instance.new("SurfaceGui",pai)
    novorastreadorsg.Face = Enum.NormalId.Back
    novorastreadorsg.AlwaysOnTop = true
    novorastreadorsg.Name = "RastreadorDeMembroNix"
    local novorastreadorfr = Instance.new("Frame",novorastreadorsg)
    novorastreadorfr.Size = UDim2.new(1,0,1,0)
    novorastreadorfr.BackgroundColor3 = bgcor
    novorastreadorfr.BackgroundTransparency = transparencia
    novorastreadorsg = Instance.new("SurfaceGui",pai)
    novorastreadorsg.Face = Enum.NormalId.Bottom
    novorastreadorsg.AlwaysOnTop = true
    novorastreadorsg.Name = "RastreadorDeMembroNix"
    novorastreadorfr = Instance.new("Frame",novorastreadorsg)
    novorastreadorfr.Size = UDim2.new(1,0,1,0)
    novorastreadorfr.BackgroundColor3 = bgcor
    novorastreadorfr.BackgroundTransparency = transparencia
    novorastreadorsg = Instance.new("SurfaceGui",pai)
    novorastreadorsg.Face = Enum.NormalId.Front
    novorastreadorsg.AlwaysOnTop = true
    novorastreadorsg.Name = "RastreadorDeMembroNix"
    novorastreadorfr = Instance.new("Frame",novorastreadorsg)
    novorastreadorfr.Size = UDim2.new(1,0,1,0)
    novorastreadorfr.BackgroundColor3 = bgcor
    novorastreadorfr.BackgroundTransparency = transparencia
    novorastreadorsg = Instance.new("SurfaceGui",pai)
    novorastreadorsg.Face = Enum.NormalId.Left
    novorastreadorsg.AlwaysOnTop = true
    novorastreadorsg.Name = "RastreadorDeMembroNix"
    novorastreadorfr = Instance.new("Frame",novorastreadorsg)
    novorastreadorfr.Size = UDim2.new(1,0,1,0)
    novorastreadorfr.BackgroundColor3 = bgcor
    novorastreadorfr.BackgroundTransparency = transparencia
    novorastreadorsg = Instance.new("SurfaceGui",pai)
    novorastreadorsg.Face = Enum.NormalId.Right
    novorastreadorsg.AlwaysOnTop = true
    novorastreadorsg.Name = "RastreadorDeMembroNix"
    novorastreadorfr = Instance.new("Frame",novorastreadorsg)
    novorastreadorfr.Size = UDim2.new(1,0,1,0)
    novorastreadorfr.BackgroundColor3 = bgcor
    novorastreadorfr.BackgroundTransparency = transparencia
    novorastreadorsg = Instance.new("SurfaceGui",pai)
    novorastreadorsg.Face = Enum.NormalId.Top
    novorastreadorsg.AlwaysOnTop = true
    novorastreadorsg.Name = "RastreadorDeMembroNix"
    novorastreadorfr = Instance.new("Frame",novorastreadorsg)
    novorastreadorfr.Size = UDim2.new(1,0,1,0)
    novorastreadorfr.BackgroundColor3 = bgcor
    novorastreadorfr.BackgroundTransparency = transparencia
    return pai
end

config.render = game:GetService("RunService").RenderStepped:Connect(function()
    if (config.working) then
        if (config.revela)then
            local Players = game.Players:GetChildren()
            for i=1,#Players do
                local cor = Color3.new(0,1,0)
                local equipado = Players[i].Character
                if not(equipado==nil)then
                    equipado = equipado:FindFirstChildOfClass("Tool")
                    if not(equipado==nil)then
                        if(equipado.Name=="Knife")then
                            cor = Color3.new(1,0,0)
                        end
                        if(equipado.Name=="Gun")then
                            cor = Color3.new(0,0,1)
                        end
                    end
                end

                local PlayersBackpack = Players[i].Backpack:GetChildren()
                for j=1, #PlayersBackpack do
                    local Item = PlayersBackpack[j]
                    if(Item.Name=="Knife")then
                        cor = Color3.new(1,0,0)
                    end
                    if(Item.Name=="Gun")then
                        cor = Color3.new(0,0,1)
                    end
                end
                
                local corpo = Players[i].Character
                if not(corpo==nil) then
                    local Partes = corpo:GetChildren()
                    for k=1,#Partes do
                        local Parte = Partes[k]
                        if(Parte.ClassName=="Part" or Parte.ClassName=="MeshPart")then
                            local check = Parte:FindFirstChild("RastreadorDeMembroNix")
                            if(check==nil)then
                                local novoreveladorrr = revelaparte(Parte,cor)
                                table.insert(config.reveladores,novoreveladorrr)
                            end

                            local papintar = Parte:GetChildren()
                            for l=1, #papintar do
                                if(papintar[l].Name=="RastreadorDeMembroNix")then
                                    papintar[l].Frame.BackgroundColor3 = cor
                                end
                            end
                        end
                    end
                end
            end
        else
            if(#config.reveladores>0)then
                for i=1, #config.reveladores do
                    local reveladorpamatar = config.reveladores[i]:GetChildren()
                    for j=1,#reveladorpamatar do
                        if(reveladorpamatar[j].Name == "RastreadorDeMembroNix")then
                            reveladorpamatar[j]:Destroy()
                        end
                    end
                end
            end
            config.reveladores={}
        end
        if(config.vaipegano2)then
            game.Players.LocalPlayer.Character.HumanoidRootPart.AssemblyAngularVelocity = Vector3.zero
            local velocidadepadrao = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed*1.35
            local OWorkspace = game.Workspace:GetChildren()
            for i=1, #OWorkspace do
                local CoinsParent = OWorkspace[i]:FindFirstChild("CoinContainer")
                if not (CoinsParent == nil) then
                    -- AntiColisores(OWorkspace[i])
                    -- local pamatar = CoinsParent.Parent:GetChildren()
                    -- for j=1,#pamatar do
                    --     if not(pamatar[j].Name=="CoinContainer")then
                    --         pamatar[j]:Destroy()
                    --     end
                    -- end
                    local OsCoin = CoinsParent:GetChildren()
                    local ClosestMoeda = nil
                    for j=1, #OsCoin do
                        local Moeda = OsCoin[j]
                        local Toveno = Moeda:FindFirstChild("CoinVisual")
                        if not (Toveno==nil) then
                            if(Toveno.Transparency==0)then
                                if not(ClosestMoeda==nil)then
                                    local Dist1 = (ClosestMoeda.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
                                    local Dist2 = (Moeda.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
                                    if(Dist2.Magnitude<Dist1.Magnitude)then
                                        ClosestMoeda=Moeda
                                    end
                                else
                                    ClosestMoeda=Moeda
                                end
                            end
                        end
                    end
                    if not(ClosestMoeda==nil)then
                        AntiColisores(game.Players.LocalPlayer.Character)
                        config.topegano = true
                        game.Workspace.Gravity = 0
                        local vecDir = ((ClosestMoeda.Position+Vector3.new(0,-1.5,0))-game.Players.LocalPlayer.Character.HumanoidRootPart.Position)--Vector3.new(0,-2,0)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.AssemblyLinearVelocity = Vector3.new((vecDir.x/vecDir.Magnitude),(vecDir.y/vecDir.Magnitude),(vecDir.z/vecDir.Magnitude))*velocidadepadrao
                        input.press(Enum.KeyCode.Space)
                        input.press(Enum.KeyCode.Space)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position,game.Players.LocalPlayer.Character.HumanoidRootPart.Position+Vector3.new(0,-1,0))
                        game.Players.LocalPlayer.Character.HumanoidRootPart.AssemblyLinearVelocity = Vector3.zero
                        if(vecDir.Magnitude<0.5)then
                            ClosestMoeda:Destroy()
                        end
                    else
                        if(config.topegano)then
                            config.topegano=false
                            game.Workspace.Gravity = config.oldg
                            game.Players.LocalPlayer.Character.Humanoid.Health = 0
                        end
                    end
                end
            end
        else
            game.Workspace.Gravity = config.oldg
        end
    else
        if(#config.reveladores>0)then
            for i=1, #config.reveladores do
                local reveladorpamatar = config.reveladores[i]:GetChildren()
                for j=1,#reveladorpamatar do
                    if(reveladorpamatar[j].Name == "RastreadorDeMembroNix")then
                        reveladorpamatar[j]:Destroy()
                    end
                end
            end
        end
        config.reveladores={}
        config.reveladores={}
        config.render:Disconnect()
        config.vaipegano2 = false
    end
end)
