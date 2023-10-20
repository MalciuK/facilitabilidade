Funqis = {
    CriarJanelaBase = function (Titulo,Largura,Altura,TomPrimario)
        if(Altura<25+25+14)then
            Altura = 64
        end
        local h = Instance.new("ScreenGui")
        local Main = Instance.new("ImageLabel")
        local Top = Instance.new("Frame")
        local Title = Instance.new("TextLabel")

        local modpertom = 8/255
        local TomSecundario = Color3.new(TomPrimario.R+modpertom,TomPrimario.G+modpertom,TomPrimario.B+modpertom)
        local TomTerciario = Color3.new(TomSecundario.R+modpertom,TomSecundario.G+modpertom,TomSecundario.B+modpertom)

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
        Title.Text = Titulo
        Title.TextColor3 = Color3.fromRGB(255, 255, 255)
        Title.TextSize = 14.000
        Title.TextWrapped = true
        return Main
    end,
    CriarJanelaFunc = function (WinB,Titulo)
        local ContainerJanela = Instance.new("Frame")
        local TopContainerJanela = Instance.new("Frame")
        local TitleJogo = Instance.new("TextLabel")
        
        local Largura = WinB.Size.Width.Offset
        local modpertom = 8/255
        local TomPrimario = WinB.TituloContainer.BackgroundColor3
        local TomSecundario = Color3.new(TomPrimario.R+modpertom,TomPrimario.G+modpertom,TomPrimario.B+modpertom)

        ContainerJanela.Name = "ContainerJanela"
        ContainerJanela.Parent = WinB
        ContainerJanela.BackgroundColor3 = TomSecundario
        ContainerJanela.BorderSizePixel = 1
        ContainerJanela.BorderColor3 = Color3.fromRGB(10, 10, 10)
        ContainerJanela.Position = UDim2.new(0, 6, 0, 32)
        ContainerJanela.Size = UDim2.new(0, Largura-12, 0, 25+6)
        
        TopContainerJanela.Name = "TituloContainerJanela"
        TopContainerJanela.Parent = ContainerJanela
        TopContainerJanela.BackgroundColor3 = TomPrimario
        TopContainerJanela.BorderSizePixel = 1
        TopContainerJanela.BorderColor3 = Color3.fromRGB(10, 10, 10)
        TopContainerJanela.Position = UDim2.new(0, 0, 0, 0)
        TopContainerJanela.Size = UDim2.new(0, Largura-12, 0, 25)

        TitleJogo.Name = "TitulorrJogo"
        TitleJogo.Parent = TopContainerJanela
        TitleJogo.BackgroundColor3 = TomPrimario
        TitleJogo.BorderSizePixel = 0
        TitleJogo.Position = UDim2.new(0, 10, 0, 0)
        TitleJogo.Size = UDim2.new(0, Largura-22, 0, 25)
        TitleJogo.Font = Enum.Font.GothamSemibold
        TitleJogo.Text = Titulo
        TitleJogo.TextColor3 = Color3.fromRGB(255, 255, 255)
        TitleJogo.TextSize = 14.000
        TitleJogo.TextWrapped = true
        TitleJogo.TextXAlignment = Enum.TextXAlignment.Left
        return ContainerJanela
    end,
    CriarTogg = function (JanB,Titulo,afunc)
        local TogCont = Instance.new("TextButton")
        local ChkBox = Instance.new("Frame")
        local redondar = Instance.new('UICorner')
        local TogTitle = Instance.new("TextLabel")
        local TogState = Instance.new("Frame")

        local Largura = JanB.Parent.Size.Width.Offset
        local modpertom = 8/255
        local TomPrimario = JanB.Parent.TituloContainer.BackgroundColor3
        local TomSecundario = Color3.new(TomPrimario.R+modpertom,TomPrimario.G+modpertom,TomPrimario.B+modpertom)
        local TomQuaternario = Color3.new(TomPrimario.R+(modpertom*3),TomPrimario.G+(modpertom*3),TomPrimario.B+(modpertom*3))
        local TomSextenario = Color3.new(TomPrimario.R+(modpertom*5),TomPrimario.G+(modpertom*5),TomPrimario.B+(modpertom*5))

        TogCont.Name = "TogCont"
        TogCont.Parent = JanB
        TogCont.BackgroundColor3 = TomSecundario
        TogCont.BorderSizePixel = 0
        TogCont.Position = UDim2.new(0, 5, 0, ((#JanB:GetChildren()-1)*31))
        TogCont.Size = UDim2.new(0, Largura-22, 0, 25)
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
                afunc(false)
            else
                if not(ChkBox.TogState.Visible)then
                    ChkBox.TogState.Visible = true
                    afunc(true)
                end
            end
        end)
        TogTitle.Name = "TogTitle"
        TogTitle.Parent = TogCont
        TogTitle.BackgroundColor3 = TogCont.BackgroundColor3
        TogTitle.BorderSizePixel = 0
        TogTitle.Position = UDim2.new(0, 30, 0, 0)
        TogTitle.Size = UDim2.new(0, Largura-57, 0, 25)
        TogTitle.Font = Enum.Font.GothamSemibold
        TogTitle.Text = Titulo
        TogTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
        TogTitle.TextSize = 14.000
        TogTitle.TextWrapped = true
        TogTitle.TextXAlignment = Enum.TextXAlignment.Left

        JanB.Size = UDim2.new(0,JanB.Size.Width.Offset,0,JanB.Size.Height.Offset+31)
        JanB.Parent.Size = UDim2.new(0,JanB.Parent.Size.Width.Offset,0,JanB.Parent.Size.Height.Offset+31)
    end,
    CriarButt = function (JanB,Titulo,afunc)
        local ButtonOnly = Instance.new("TextButton")
        
        local Largura = JanB.Parent.Size.Width.Offset
        local modpertom = 8/255
        local TomPrimario = JanB.Parent.TituloContainer.BackgroundColor3
        local TomQuaternario = Color3.new(TomPrimario.R+(modpertom*3),TomPrimario.G+(modpertom*3),TomPrimario.B+(modpertom*3))

        ButtonOnly.Name = "Matador"
        ButtonOnly.Parent = JanB
        ButtonOnly.BackgroundColor3 = TomQuaternario
        ButtonOnly.Position = UDim2.new(0, 5, 0, ((#JanB:GetChildren()-1)*31)+1)
        ButtonOnly.Size = UDim2.new(0, Largura-22, 0, 25)
        ButtonOnly.BorderSizePixel = 1
        ButtonOnly.BorderColor3 = Color3.fromRGB(20,20,20)
        ButtonOnly.Text = Titulo
        ButtonOnly.TextColor3 = Color3.fromRGB(255, 255, 255)
        ButtonOnly.Font = Enum.Font.GothamSemibold
        ButtonOnly.TextSize = 14.000
        ButtonOnly.TextWrapped = true
        ButtonOnly.MouseButton1Click:Connect(function()
            afunc()
        end)
        JanB.Size = UDim2.new(0,JanB.Size.Width.Offset,0,JanB.Size.Height.Offset+31)
        JanB.Parent.Size = UDim2.new(0,JanB.Parent.Size.Width.Offset,0,JanB.Parent.Size.Height.Offset+31)
    end
}
return Funqis

-- local Window = Funqis.CriarJanelaBase("Super Interface do Niquispiroca",250,500,Color3.new(0.160784, 0.160784, 0.160784))
-- local Janela = Funqis.CriarJanelaFunc(Window,"Royaleeee Altoooooo")
-- local Togg = Funqis.CriarTogg(Janela,"TogExemplo",function (a) print(a) end)
-- local Butt = Funqis.CriarButt(Janela,"Butaozim",function() print("me cricaro") end)
