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
    autofarmi = false,
    auto2xextra = false
}
local coal = 0
game:GetService("RunService").RenderStepped:Connect(function()
    if(config.autofarmi)then
        local plots = game.Workspace.Tycoons:GetChildren()
        local meuplot = nil
        for i=1,#plots do
            if(#plots[i].MergeIndex.MergePart:GetChildren()==0)then
                meuplot = plots[i]
            end
        end

        local alia = game.Workspace.Droplets:GetChildren()
        if(#alia>0)then
            for i=1,#alia do
                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,alia[i],0)
            end
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(meuplot.UpgradePads.Deposit.Cylinder.Position*Vector3.new(1,2,1))
        else
            local mamanistr = game.Players.LocalPlayer.PlayerGui.ScreenGui.CoinsCounter.TextLabel.Text
            local Modnum = string.sub(mamanistr,#mamanistr,#mamanistr)
            local mamaninum = nil
            if(Modnum=="K")then
                mamaninum = tonumber(string.sub(mamanistr,1,#mamanistr-1))*1000
            else
                if(Modnum=="M") then
                    mamaninum = tonumber(string.sub(mamanistr,1,#mamanistr-1))*1000000
                else
                    mamaninum = tonumber(string.sub(mamanistr,1,#mamanistr))
                end
            end
            
            local taxapsstr = meuplot.ProcessMachine.BillboardGui.SalePerTick.Text
            taxapsstr = taxapsstr:gsub("% Per Sec", "")
            Modnum = string.sub(taxapsstr,#taxapsstr,#taxapsstr)
            local taxapsnum = nil
            if(Modnum=="K")then
                taxapsnum = tonumber(string.sub(taxapsstr,2,#taxapsstr-1))*1000
            else
                if(Modnum=="M") then
                    taxapsnum = tonumber(string.sub(taxapsstr,2,#taxapsstr-1))*1000000
                else
                    taxapsnum = tonumber(string.sub(taxapsstr,2,#taxapsstr))
                end
            end

            local depositadostr = meuplot.ProcessMachine.BillboardGui.DepositedAmount.Text
            depositadostr = depositadostr:gsub("% Yarn", "")
            Modnum = string.sub(depositadostr,#depositadostr,#depositadostr)
            local depositadonum = nil
            if(Modnum=="K")then
                depositadonum = tonumber(string.sub(depositadostr,1,#depositadostr-1))*1000
            else
                if(Modnum=="M") then
                    depositadonum = tonumber(string.sub(depositadostr,1,#depositadostr-1))*1000000
                else
                    depositadonum = tonumber(string.sub(depositadostr,1,#depositadostr))
                end
            end

            local praicemaistaxastr = meuplot.UpgradePads.DepositUpgrade1.Button.BillboardGui.Price.Text
            Modnum = string.sub(praicemaistaxastr,#praicemaistaxastr,#praicemaistaxastr)
            local praicemaistaxanum = nil
            if(Modnum=="K")then
                praicemaistaxanum = tonumber(string.sub(praicemaistaxastr,2,#praicemaistaxastr-1))*1000
            else
                if(Modnum=="M") then
                    praicemaistaxanum = tonumber(string.sub(praicemaistaxastr,2,#praicemaistaxastr-1))*1000000
                else
                    praicemaistaxanum = tonumber(string.sub(praicemaistaxastr,2,#praicemaistaxastr))
                end
            end

            local praicemaisgatostr = meuplot.UpgradePads.BuyDropper.Button.BillboardGui.Price.Text
            Modnum = string.sub(praicemaisgatostr,#praicemaisgatostr,#praicemaisgatostr)
            local praicemaisgatonum = nil
            if(Modnum=="K")then
                praicemaisgatonum = tonumber(string.sub(praicemaisgatostr,2,#praicemaisgatostr-1))*1000
            else
                if(Modnum=="M") then
                    praicemaisgatonum = tonumber(string.sub(praicemaisgatostr,2,#praicemaisgatostr-1))*1000000
                else
                    praicemaisgatonum = tonumber(string.sub(praicemaisgatostr,2,#praicemaisgatostr))
                end
            end
            
            if(depositadonum>=taxapsnum)then
                if(mamaninum>=praicemaistaxanum)then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(meuplot.UpgradePads.DepositUpgrade1.Cylinder.Position*Vector3.new(1,2,1))
                end
            else
                if(mamaninum>=praicemaisgatonum)then
                    print("\n\nDinheiro: $"..mamaninum.."\nMais Gato: $"..praicemaisgatonum)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(meuplot.UpgradePads.BuyDropper.Cylinder.Position*Vector3.new(1,2,1))
                else
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(meuplot.UpgradePads.Merge.Cylinder.Position*Vector3.new(1,2,1))
                end
            end
        end
    end
    if(config.auto2xextra)then
        local bonus = game.Players.LocalPlayer.PlayerGui.ScreenGui.CoinsCounter:WaitForChild("2XMessage")
        if not(bonus.Visible)then
            local GetiBonus = game.Workspace.Obby.RewardButton.Button
            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,GetiBonus,0)
            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,GetiBonus,1)
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
    Title.Text = "Super Hack do Niquistiniqui"
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
    TitleJogo.Text = "Kittyyy Tycoon"
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

    ChkBox.Name = "ChkBox"
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
            config.autofarmi = false
        else
            if not(ChkBox.TogState.Visible)then
                ChkBox.TogState.Visible = true
                config.autofarmi = true
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

    TogCont = TogCont:Clone()
    TogCont.Parent = ContainerFunc
    TogCont.Position = UDim2.new(0, 5, 0, 31+25+5)
    TogCont.TogTitle.Text = "Auto Obby Extra"
    TogCont.MouseButton1Click:Connect(function()
        if(TogCont.ChkBox.TogState.Visible)then
            TogCont.ChkBox.TogState.Visible = false
            config.auto2xextra = false
        else
            if not(TogCont.ChkBox.TogState.Visible)then
                TogCont.ChkBox.TogState.Visible = true
                config.auto2xextra = true
            end
        end
    end)

    ButtonOnly.Name = "Matador"
    ButtonOnly.Parent = ContainerFunc
    ButtonOnly.BackgroundColor3 = ChkBox.BackgroundColor3
    ButtonOnly.Position = UDim2.new(0, 5, 0, 31+60)
    ButtonOnly.Size = UDim2.new(0, Largura-20, 0, 25)
    ButtonOnly.BorderSizePixel = 1
    ButtonOnly.BorderColor3 = Color3.fromRGB(10,10,10)
    ButtonOnly.Text = "Fechar UI"
    ButtonOnly.TextColor3 = Color3.fromRGB(255, 255, 255)
    ButtonOnly.Font = Enum.Font.GothamSemibold
    ButtonOnly.TextSize = 14.000
    ButtonOnly.TextWrapped = true
    ButtonOnly.MouseButton1Click:Connect(function()
        config.autofarmi = false
        config.auto2xextra = false
        h:Destroy()
    end)
end
CriarJanelaBase(300,(5*25)+(5*6)+2,Color3.new(0.082352, 0.050980, 0.227450))
