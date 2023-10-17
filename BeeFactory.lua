-- loadstring(game:HttpGet('https://raw.githubusercontent.com/1uaxx/yunv2/main/librarysource.lua'))()
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
    melzin = false,
    entregar = false,
    upabieia = false,
    maitaxa = false,
    afkdelay = 1000,
    mashupa = false,
    antiafk = false
}
print((tonumber("3")), tonumber("3.2"))

game:GetService("RunService").RenderStepped:Connect(function()
    if(config.antiafk)then
        if(config.afkdelay>0)then
            config.afkdelay -= 1
        else
            config.afkdelay = 1000
            input.press(Enum.KeyCode.Space)
        end
    end
    if(config.melzin)then
        local osmel = game.Workspace.Tycoons:WaitForChild(game.Players.LocalPlayer.Name).Honey:GetChildren()
        for i=1,#osmel do
            osmel[i].Egg.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        end
    end
    if(config.entregar)then
        local deposito = game.Workspace.Tycoons:WaitForChild(game.Players.LocalPlayer.Name).Buttons.Sell
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,deposito,0)
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,deposito,1)
    end
    if(config.upabieia)then
        local uprecinstr = game.Workspace.Tycoons:WaitForChild(game.Players.LocalPlayer.Name).BillboardGuis.PurchaseBee.BillboardGui.Cost.Text
        uprecinstr = uprecinstr:gsub("%,", "")
        local Modnum = string.sub(uprecinstr,#uprecinstr,#uprecinstr)
        local uprecinnum = nil
        if(Modnum=="K")then
            uprecinnum = tonumber(string.sub(uprecinstr,2,#uprecinstr-1))*1000
        else
            if(Modnum=="M") then
                uprecinnum = tonumber(string.sub(uprecinstr,2,#uprecinstr-1))*1000000
            else
                uprecinnum = tonumber(string.sub(uprecinstr,2,#uprecinstr))
            end
        end

        local mamanistr = game.Players.LocalPlayer.PlayerGui.ScreenGui.Frame.Coins.TextLabel.Text
        mamanistr = mamanistr:gsub("%,", "")
        Modnum = string.sub(mamanistr,#mamanistr,#mamanistr)
        local mamaninum = nil
        if(Modnum=="K")then
            mamaninum = tonumber(string.sub(mamanistr,2,#mamanistr-1))*1000
        else
            if(Modnum=="M") then
                mamaninum = tonumber(string.sub(mamanistr,2,#mamanistr-1))*1000000
            else
                mamaninum = tonumber(string.sub(mamanistr,2,#mamanistr))
            end
        end
        if(uprecinnum<=mamaninum)then
            local UbutoPaPagah = game.Workspace.Tycoons:WaitForChild(game.Players.LocalPlayer.Name).Buttons.Purchase_Bee
            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,UbutoPaPagah,0)
            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,UbutoPaPagah,1)
        end
    end
    if(config.maitaxa)then
        local uprecinstr2 = game.Workspace.Tycoons:WaitForChild(game.Players.LocalPlayer.Name).BillboardGuis.SellPartText.BillboardGui.Amount.Text
        uprecinstr2 = uprecinstr2:gsub("%,", "")
        local Modnum = string.sub(uprecinstr2,#uprecinstr2,#uprecinstr2)
        local uprecinnum2 = nil
        if(Modnum=="K")then
            uprecinnum2 = tonumber(string.sub(uprecinstr2,1,#uprecinstr2-1))*1000
        else
            if(Modnum=="M") then
                uprecinnum2 = tonumber(string.sub(uprecinstr2,1,#uprecinstr2-1))*1000000
            else
                uprecinnum2 = tonumber(string.sub(uprecinstr2,1,#uprecinstr2))
            end
        end

        local uprecinstr3 = game.Workspace.Tycoons:WaitForChild(game.Players.LocalPlayer.Name).BillboardGuis.SellPartText.BillboardGui.Rate.Text
        uprecinstr3 = uprecinstr3:split(" ")[2]
        uprecinstr3 = uprecinstr3:gsub("%/s", "")
        uprecinstr3 = uprecinstr3:gsub("%,", "")
        Modnum = string.sub(uprecinstr3,#uprecinstr3,#uprecinstr3)
        local uprecinnum3 = nil
        if(Modnum=="K")then
            uprecinnum3 = tonumber(string.sub(uprecinstr3,1,#uprecinstr3-1))*1000
        else
            if(Modnum=="M") then
                uprecinnum3 = tonumber(string.sub(uprecinstr3,1,#uprecinstr3-1))*1000000
            else
                uprecinnum3 = tonumber(string.sub(uprecinstr3,1,#uprecinstr3))
            end
        end

        if(uprecinnum2>=uprecinnum3)then
            local uprecinstr = game.Workspace.Tycoons:WaitForChild(game.Players.LocalPlayer.Name).BillboardGuis.UpgradeSell.BillboardGui.Cost.Text
            uprecinstr = uprecinstr:gsub("%,", "")
            Modnum = string.sub(uprecinstr,#uprecinstr,#uprecinstr)
            local uprecinnum = nil
            if(Modnum=="K")then
                uprecinnum = tonumber(string.sub(uprecinstr,2,#uprecinstr-1))*1000
            else
                if(Modnum=="M") then
                    uprecinnum = tonumber(string.sub(uprecinstr,2,#uprecinstr-1))*1000000
                else
                    uprecinnum = tonumber(string.sub(uprecinstr,2,#uprecinstr))
                end
            end
            local mamanistr = game.Players.LocalPlayer.PlayerGui.ScreenGui.Frame.Coins.TextLabel.Text
            mamanistr = mamanistr:gsub("%,", "")
            Modnum = string.sub(mamanistr,#mamanistr,#mamanistr)
            local mamaninum = nil
            if(Modnum=="K")then
                mamaninum = tonumber(string.sub(mamanistr,2,#mamanistr-1))*1000
            else
                if(Modnum=="M") then
                    mamaninum = tonumber(string.sub(mamanistr,2,#mamanistr-1))*1000000
                else
                    mamaninum = tonumber(string.sub(mamanistr,2,#mamanistr))
                end
            end

            if(uprecinnum<=mamaninum)then
                local UbutoPaPagah = game.Workspace.Tycoons:WaitForChild(game.Players.LocalPlayer.Name).Buttons.Faster_Button
                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,UbutoPaPagah,0)
                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,UbutoPaPagah,1)
            end
        end
    end
    if(config.mashupa)then
        local cumea = game.Workspace.Tycoons:WaitForChild(game.Players.LocalPlayer.Name).Hive:GetChildren()
        local asabeias = {}
        local tiermax = 50
        for preparano=1, tiermax do
            table.insert(asabeias, tonumber(preparano), 0)
        end
        for i=1,#cumea do
            if(#cumea[i]:GetChildren()>3)then
                local cadeotier = cumea[i].Bee:GetChildren()
                local peraprr = 0
                for i=1,#cadeotier do
                    if(#cadeotier[i]:GetChildren()>0 and cadeotier[i].ClassName == "MeshPart") then
                        local otier = tonumber(cadeotier[i].TierText.Frame.Tier.Text:split(" ")[2])
                        asabeias[otier] += 1
                    end
                end
            end
        end
        for i=1,#asabeias do
            if(asabeias[i]>=3)then
                local merjador = game.Workspace.Tycoons:WaitForChild(game.Players.LocalPlayer.Name).Buttons.MergeBees
                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,merjador,0)
                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,merjador,1)
                break
            end
        end
    end
end)

function CriarJanelaBase(Largura,Altura,TomPrimario)
    local h = Instance.new("ScreenGui")
    local Main = Instance.new("ImageLabel")
    local Top = Instance.new("Frame")
    local Title = Instance.new("TextLabel")
    local ContainerFunc = Instance.new("Frame")
    local TopContainerFunc = Instance.new("Frame")
    local TitleJogo = Instance.new("TextLabel")

    local modpertom = 8/255
    local TomSecundario = Color3.new(TomPrimario.R+modpertom,TomPrimario.G+modpertom,TomPrimario.B+modpertom)
    local TomTerciario = Color3.new(TomSecundario.R+modpertom,TomSecundario.G+modpertom,TomSecundario.B+modpertom)
    local TomQuaternario = Color3.new(TomTerciario.R+modpertom,TomTerciario.G+modpertom,TomTerciario.B+modpertom)
    local TomQuintenario = Color3.new(TomQuaternario.R+modpertom,TomQuaternario.G+modpertom,TomQuaternario.B+modpertom)
    local TomSextenario = Color3.new(TomQuintenario.R+modpertom,TomQuintenario.G+modpertom,TomQuintenario.B+modpertom)

    h.Name = "NixtiscriptEsteveAquiiiUwU"
    h.Parent = game:GetService("CoreGui")
    h.ResetOnSpawn = false

    Main.Name = "Main"
    Main.Parent = h
    Main.Active = true
    Main.Draggable = true
    Main.BackgroundColor3 = TomTerciario
    Main.BorderSizePixel = 1
    Main.BorderColor3 = Color3.fromRGB(10, 10, 10)
    Main.Position = UDim2.new(0, 0, 0, 0)
    Main.Size = UDim2.new(0, Largura, 0, Altura)

    Top.Name = "TituloContainer"
    Top.Parent = Main
    Top.BackgroundColor3 = TomPrimario
    Top.BorderSizePixel = 1
    Top.BorderColor3 = Color3.fromRGB(10, 10, 10)
    Top.Position = UDim2.new(0, 0, 0, 0)
    Top.Size = UDim2.new(0, Largura, 0, 25)    
  
    Title.Name = "Titulorr"
    Title.Parent = Top
    Title.BackgroundColor3 = TomPrimario
    Title.BorderSizePixel = 0
    Title.Position = UDim2.new(0, 0, 0, 0)
    Title.Size = UDim2.new(0, Largura, 0, 25)
    Title.Font = Enum.Font.GothamSemibold
    Title.Text = "Super Hack do Niquistiniquis"
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.TextSize = 14.000
    Title.TextWrapped = true

    ContainerFunc.Name = "ContainerFuncoes"
    ContainerFunc.Parent = Main
    ContainerFunc.BackgroundColor3 = TomSecundario
    ContainerFunc.BorderSizePixel = 1
    ContainerFunc.BorderColor3 = Color3.fromRGB(10, 10, 10)
    ContainerFunc.Position = UDim2.new(0, 5, 0, 31)
    ContainerFunc.Size = UDim2.new(0, Largura-10, 0, Altura-36)   
     
    TopContainerFunc.Name = "TituloContainerFunc"
    TopContainerFunc.Parent = ContainerFunc
    TopContainerFunc.BackgroundColor3 = TomPrimario
    TopContainerFunc.BorderSizePixel = 1
    TopContainerFunc.BorderColor3 = Color3.fromRGB(10, 10, 10)
    TopContainerFunc.Position = UDim2.new(0, 0, 0, 0)
    TopContainerFunc.Size = UDim2.new(0, Largura-10, 0, 25)    

    TitleJogo.Name = "TitulorrJogo"
    TitleJogo.Parent = TopContainerFunc
    TitleJogo.BackgroundColor3 = TomPrimario
    TitleJogo.BorderSizePixel = 0
    TitleJogo.Position = UDim2.new(0, 10, 0, 0)
    TitleJogo.Size = UDim2.new(0, Largura-20, 0, 25)
    TitleJogo.Font = Enum.Font.GothamSemibold
    TitleJogo.Text = "Bee Factory Tycoon"
    TitleJogo.TextColor3 = Color3.fromRGB(255, 255, 255)
    TitleJogo.TextSize = 14.000
    TitleJogo.TextWrapped = true
    TitleJogo.TextXAlignment = Enum.TextXAlignment.Left

    local TogCont = Instance.new("TextButton")
    local ChkBox = Instance.new("Frame")
    local redondar = Instance.new('UICorner')
    local TogTitle = Instance.new("TextLabel")
    local TogState = Instance.new("Frame")
    local ButtonOnly = Instance.new("TextButton")

    TogCont.Name = "TogCont"
    TogCont.Parent = ContainerFunc
    TogCont.BackgroundColor3 = TomSecundario
    TogCont.BorderSizePixel = 0
    TogCont.Position = UDim2.new(0, 5, 0, 31)
    TogCont.Size = UDim2.new(0, Largura-20, 0, 25)
    TogCont.Text = ""
    TogCont.AutoButtonColor = false

    ChkBox.Name = "ChkBoxTog"
    ChkBox.Parent = TogCont
    ChkBox.BackgroundColor3 = TomQuaternario
    ChkBox.Position = UDim2.new(0, 0, 0, 0)
    ChkBox.Size = UDim2.new(0, 25, 0, 25)  
    redondar.Name = "ArredondaSaporra"
    redondar.Parent = ChkBox
    TogState.Name = "TogState"
    TogState.Parent = ChkBox
    TogState.BackgroundColor3 = TomSextenario
    TogState.Position = UDim2.new(0, 2, 0, 2)
    TogState.Size = UDim2.new(0, 21, 0, 21)
    TogState.Visible = false
    local redondar2 = redondar:Clone()
    redondar2.Name = "ArredondaSaporra"
    redondar2.Parent = TogState
    
    TogCont.MouseButton1Click:Connect(function()
        if(ChkBox.TogState.Visible)then
            ChkBox.TogState.Visible = false
            config.entregar = false
            config.upabieia = false
            config.melzin = false
            config.maitaxa = false
            config.mashupa = false
            config.antiafk = false
        else
            if not(ChkBox.TogState.Visible)then
                ChkBox.TogState.Visible = true
                config.entregar = true
                config.upabieia = true
                config.melzin = true
                config.maitaxa = true
                config.mashupa = true
                config.antiafk = true
            end
        end
    end)

    TogTitle.Name = "TogTitle"
    TogTitle.Parent = TogCont
    TogTitle.BackgroundColor3 = TogCont.BackgroundColor3
    TogTitle.BorderSizePixel = 0
    TogTitle.Position = UDim2.new(0, 25+5, 0, 0)
    TogTitle.Size = UDim2.new(0, Largura-20-25-5, 0, 25)
    TogTitle.Font = Enum.Font.GothamSemibold
    TogTitle.Text = "AutoFarm"
    TogTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
    TogTitle.TextSize = 14.000
    TogTitle.TextWrapped = true
    TogTitle.TextXAlignment = Enum.TextXAlignment.Left

    ButtonOnly.Name = "Matador"
    ButtonOnly.Parent = ContainerFunc
    ButtonOnly.BackgroundColor3 = ChkBox.BackgroundColor3
    ButtonOnly.Position = UDim2.new(0, 5, 0, 31+25+5)
    ButtonOnly.Size = UDim2.new(0, Largura-20, 0, 25)
    ButtonOnly.BorderSizePixel = 1
    ButtonOnly.BorderColor3 = Color3.fromRGB(10,10,10)
    ButtonOnly.Text = "Fechar UI"
    ButtonOnly.TextColor3 = Color3.fromRGB(255, 255, 255)
    ButtonOnly.Font = Enum.Font.GothamSemibold
    ButtonOnly.TextSize = 14.000
    ButtonOnly.TextWrapped = true
    ButtonOnly.MouseButton1Click:Connect(function()
        config.entregar = false
        config.upabieia = false
        config.melzin = false
        config.maitaxa = false
        config.mashupa = false
        config.antiafk = false
        h:Destroy()
    end)
end
CriarJanelaBase(300,128,Color3.new(0.227450, 0.188235, 0.050980))
