local ContextActionService = game:GetService("ContextActionService")

local configsfunextras ={
    working = true,
    renderstepped = nil,
    ragdoll = false,
    grudado = "None",
    flipflop = false,
    fly = false,
    rastrear = false
}

function janfuncextras(Window)
    configsfunextras.working = true
    configsfunextras.renderstepped = nil
    configsfunextras.ragdoll = false
    
    function getplayersnametable() 
        local ospreiereturn = {"None"}
        local ospreie = game.Players:GetChildren()
        for i=1, #ospreie do
            table.insert(ospreiereturn,ospreie[i].Name)
        end
        return ospreiereturn
    end
    function puxatools()
        function cavuca(currpasta)
            local cavucano = currpasta:GetChildren()
            for i=1, #cavucano do
                if(#cavucano[i]:GetChildren()>0)then 
                    cavuca(cavucano[i])
                end
                if(cavucano[i].ClassName=="Tool")then
                    local clone = cavucano[i]:Clone()
                    clone.Parent = game.Players.LocalPlayer.Backpack
                end
            end
        end
        local ondepuxar = game
        cavuca(ondepuxar)
    end
    local genericextj = Funqis.CriarJanelaFunc(Window,"Funções Extras Aí Procê")
    local genericext = Funqis.CriarDrop(genericextj,"Teletransporte","Seleciona pro TP",function() return getplayersnametable() end,function(ken) game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(ken).Character.HumanoidRootPart.CFrame end)
    local genericext = Funqis.CriarDrop(genericextj,"Grudar","Seleciona pra grudar",function() return getplayersnametable() end,function(ken) configsfunextras.grudado = ken end)
    local genericext = Funqis.CriarSlider(genericextj,"Velocidade %",0,-100,250,function(ValorRetorno,Porcentagem) game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16+(16*ValorRetorno/100) end)
    local genericext = Funqis.CriarTogg(genericextj,"Ragdoll",function(a) configsfunextras.ragdoll = a end)
    local genericext = Funqis.CriarTogg(genericextj,"Spinarrr",function(a) configsfunextras.flipflop = a end)
    local genericext = Funqis.CriarTogg(genericextj,"Rastrear",function(a) configsfunextras.rastrear = a end)
    local genericext = Funqis.CriarTogg(genericextj,"FlyCringe",function(a) configsfunextras.fly = a end)
    local genericext = Funqis.CriarButt(genericextj,"Remover Texturas",function() matatexturas() end)
    local genericext = Funqis.CriarButt(genericextj,"Remover Formas",function() mataformas() end)

    function matatexturas()
        function cavucatexturas(Pai)
            local Filhos = Pai:GetChildren()
            for i=1, #Filhos do
                local Filho = Filhos[i]
                if(Filho.ClassName == "Texture" or Filho.ClassName == "Decal")then
                    Filho:Destroy()
                else
                    if pcall(function() local checa = Filho["TextureID"] end) then
                        Filho.TextureID = ""
                    end
                    if pcall(function() local checa = Filho["Material"] end) then
                        Filho.Material = Enum.Material.Plastic
                    end
                    if(#Filho:GetChildren()>0)then
                        cavucatexturas(Filho)
                    end
                end
            end
            
        end
        cavucatexturas(game)
    end
    function mataformas()
        function cavucatexturas(Pai)
            local Filhos = Pai:GetChildren()
            for i=1, #Filhos do
                local Filho = Filhos[i]
                if(Filho.ClassName == "Texture" or Filho.ClassName == "Decal")then
                    Filho:Destroy()
                else
                    if pcall(function() local checa = Filho["MeshId"] end) then
                        Filho.MeshId = ""
                    end
                    if pcall(function() local checa = Filho["Shape"] end) then
                        Filho.Shape = 1
                    end
                    if(#Filho:GetChildren()>0)then
                        cavucatexturas(Filho)
                    end
                end
            end
            
        end
        cavucatexturas(game)
    end

    function tiropeipei(ken)
        local OPlayerr = game.Players:FindFirstChild(ken)
        local check = false
        if not(OPlayerr.Name==game.Players.LocalPlayer.Name or check)then
            print(OPlayerr.Name)
            local eu = game.Players.LocalPlayer.Character.HumanoidRootPart

            local direcao = (OPlayerr.Character.HumanoidRootPart.Position-eu.Position).Unit
            local forcadotiro = 100000*direcao
            
            local att = Instance.new("Attachment",eu)
            att.Name = "Segura"
            local vf = Instance.new("VectorForce",eu)
            vf.Name = "TiroForca"
            vf.Force = forcadotiro
            vf.RelativeTo = Enum.ActuatorRelativeTo.World
            vf.Attachment0 = att


            check = true
        end
    end

    configsfunextras.renderstepped = game:GetService("RunService").Stepped:Connect(function() 
        if(configsfunextras.working)then
            if(configsfunextras.ragdoll)then
                local humanoidekkk = game.Players.LocalPlayer.Character.Humanoid
                if not(humanoidekkk:GetState()==Enum.HumanoidStateType.FallingDown)then
                    humanoidekkk:ChangeState(Enum.HumanoidStateType.FallingDown)
                end
            end
            if(configsfunextras.flipflop) then
                local Eu = game.Players.LocalPlayer.Character.HumanoidRootPart
                local Velocidade = 45
                local newrot = CFrame.Angles(math.rad(Velocidade*1/3),math.rad(Velocidade*2/3),math.rad(Velocidade*3/3))
                Eu.CFrame = Eu.CFrame:ToWorldSpace(newrot)
            end
            if(configsfunextras.rastrear) then
                local Eu = game.Players.LocalPlayer.Character.HumanoidRootPart
                local Jogadores = game.Players:GetChildren()
                for i=1, #Jogadores do
                    local Jogador = Jogadores[i].Character
                    if not(Jogador==nil)then
                        local JogadorRP = Jogador:FindFirstChild("HumanoidRootPart")
                        if not(JogadorRP==nil)then
                            local PastaRastreadores = game.Workspace:FindFirstChild("PastaRastreadoresNix")
                            if (PastaRastreadores==nil)then
                                local novapasta = Instance.new("Folder",game.Workspace)
                                novapasta.Name = "PastaRastreadoresNix"
                                PastaRastreadores = novapasta
                            end
                            
                            function revelarastreador(pai)
                                local bgcor = Color3.new(1,0,0)
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
                            local ORastreador = PastaRastreadores:FindFirstChild(Jogador.Name)
                            if(ORastreador==nil)then
                                local novorastreador = Instance.new("Part",PastaRastreadores)
                                novorastreador.Anchored = true
                                novorastreador.CanCollide = false
                                novorastreador.Transparency=1
                                novorastreador.Name = Jogador.Name
                                ORastreador = revelarastreador(novorastreador)
                            end


                            local checkmembro = JogadorRP:FindFirstChild("RastreadorDeMembroNix")
                            if(checkmembro==nil)then
                                local Membros = Jogador:GetChildren()
                                for j=1, #Membros do
                                    local Membro = Membros[j]
                                    if((Membro.ClassName=="Part" or Membro.ClassName=="MeshPart"))then
                                        local segura = revelarastreador(Membro)
                                    end
                                end
                            end

                            local VetorDir = (JogadorRP.Position-Eu.Position)
                            local PontoMed = Eu.Position+(VetorDir/2)
                            local Distancia = VetorDir.Magnitude

                            ORastreador.CFrame = CFrame.new(PontoMed,Eu.Position)
                            ORastreador.Size = Vector3.new(0.5,0.5,Distancia)


                        end
                    end
                end

                local PastaRastreadores = game.Workspace:FindFirstChild("PastaRastreadoresNix")
                if not(PastaRastreadores==nil)then
                    local Rastreadores = PastaRastreadores:GetChildren()
                    for i=1, #Rastreadores do
                        local Rastreador = Rastreadores[i]
                        local Check = game.Players:FindFirstChild(Rastreador.Name)
                        if(Check==nil)then
                            Rastreador:Destroy()
                        end
                    end
                end
            else
                local PastaRastreadores = game.Workspace:FindFirstChild("PastaRastreadoresNix")
                if not(PastaRastreadores==nil)then
                    PastaRastreadores:Destroy()
                    local playersi = game.Players:GetChildren()
                    for i=1, #playersi do
                        local playerc = playersi[i].Character
                        if not(playerc==nil)then
                            local membros = playerc:GetChildren()
                            for j=1, #membros do
                                local omembro = membros[j]
                                if((omembro.ClassName=="Part" or omembro.ClassName=="MeshPart") and #omembro:GetChildren()>0)then
                                    local cavucamais = omembro:GetChildren()
                                    for k=1, #cavucamais do
                                        if(cavucamais[k].Name == "RastreadorDeMembroNix")then
                                            cavucamais[k]:Destroy()
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
            if(configsfunextras.fly)then
                local Eu = game.Players.LocalPlayer.Character
                if not(Eu==nil)then
                    Eu = Eu:FindFirstChild("HumanoidRootPart")

                    local flaidomarcin = game.Workspace:FindFirstChild("FlyDoMarcin")
                    if(flaidomarcin==nil)then
                        local novoflaidomarcin = Instance.new("Folder",game.Workspace)
                        novoflaidomarcin.Name = "FlyDoMarcin"
                        flaidomarcin=novoflaidomarcin
                    end

                    local PosicaoPlataforma = (Eu.Position-Vector3.new(0,(Eu.Parent:GetExtentsSize().Y/2)+1,0))
                    local novaplataformadefly = Instance.new("Part",flaidomarcin)
                    novaplataformadefly.Name = "PlataformaFly"
                    novaplataformadefly.Anchored = true
                    novaplataformadefly.Color = Color3.new(1,1,1)
                    novaplataformadefly.Transparency=0.9
                    novaplataformadefly.Size = Vector3.new(10,1,10)
                    novaplataformadefly.CFrame = CFrame.new(PosicaoPlataforma,PosicaoPlataforma+game.Workspace.CurrentCamera.CFrame.LookVector.Unit*10)

                    local tempo = 10
                    local pramatardepois = nil
                    pramatardepois = game:GetService("RunService").RenderStepped:Connect(function()
                        if(tempo>0)then
                            tempo-=1
                        else
                            novaplataformadefly:Destroy()
                            pramatardepois:Disconnect()
                        end
                    end)
                end
            else
                local Eu = game.Players.LocalPlayer.Character.HumanoidRootPart
                Eu.Anchored=false
            end
            if not(configsfunextras.grudado=="None")then
                local Eu = game.Players.LocalPlayer.Character.HumanoidRootPart
                local Pessoa = game.Players:FindFirstChild(configsfunextras.grudado)
                if not(Pessoa==nil)then
                    if not(Pessoa.Character:FindFirstChild("Head")==nil)then
                        Eu.CFrame = (Eu.CFrame + ((Pessoa.Character.Head.Position + Vector3.new(0,(Eu.Size.Y)+(Pessoa.Character.Head.Size.Y*2),0))-Eu.CFrame.Position))
                        Eu.Velocity = Vector3.new(0,0,0)
                    end
                end
            end
        else
            local Eu = game.Players.LocalPlayer.Character.HumanoidRootPart
            Eu.Anchored=false
            local PastaRastreadores = game.Workspace:FindFirstChild("PastaRastreadoresNix")
            if not(PastaRastreadores==nil)then
                PastaRastreadores:Destroy()
                local playersi = game.Players:GetChildren()
                for i=1, #playersi do
                    local playerc = playersi[i].Character
                    if not(playerc==nil)then
                        local membros = playerc:GetChildren()
                        for j=1, #membros do
                            local omembro = membros[j]
                            if((omembro.ClassName=="Part" or omembro.ClassName=="MeshPart") and #omembro:GetChildren()>0)then
                                local cavucamais = omembro:GetChildren()
                                for k=1, #cavucamais do
                                    if(cavucamais[k].Name == "RastreadorDeMembroNix")then
                                        cavucamais[k]:Destroy()
                                    end
                                end
                            end
                        end
                    end
                end
            end
            configsfunextras.renderstepped:Disconnect()
        end
    end)
end

Funqis = {
    CriarJanelaBase = function (Titulo,Largura,Altura,TomPrimario,aclosefunc)
        local h = Instance.new("ScreenGui")
        local Main = Instance.new("ImageLabel")
        local Top = Instance.new("Frame")
        local Title = Instance.new("TextLabel")
        local CloseWindowButton = Instance.new("TextButton")
        local ButtonExtraOptions = Instance.new("TextButton")
        local ContentWindows = Instance.new("ScrollingFrame")

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

        ButtonExtraOptions.Name = "Extras"
        ButtonExtraOptions.Text = "+"
        ButtonExtraOptions.Parent = Top
        ButtonExtraOptions.BackgroundColor3 = TomPrimario
        ButtonExtraOptions.BorderSizePixel = 1
        ButtonExtraOptions.BorderColor3 = Color3.fromRGB(10, 10, 10)
        ButtonExtraOptions.Position = UDim2.new(0, 0, 0, 0)
        ButtonExtraOptions.Size = UDim2.new(0, 25, 0, 25)   
        ButtonExtraOptions.TextColor3 = Color3.fromRGB(255, 255, 255)
        ButtonExtraOptions.Font = Enum.Font.GothamSemibold
        ButtonExtraOptions.TextSize = 14.000
        ButtonExtraOptions.TextWrapped = true

        Title.Name = "Titulorr"
        Title.Parent = Top
        Title.BackgroundColor3 = TomPrimario
        Title.BorderSizePixel = 0
        Title.Position = UDim2.new(0, 25, 0, 0)
        Title.Size = UDim2.new(0, Largura-50, 0, 25)
        Title.Font = Enum.Font.GothamSemibold
        Title.Text = Titulo
        Title.TextColor3 = Color3.fromRGB(255, 255, 255)
        Title.TextWrapped = false
        Title.TextScaled = true

        CloseWindowButton.Name = "CloseButton"
        CloseWindowButton.Text = "X"
        CloseWindowButton.Parent = Top
        CloseWindowButton.BackgroundColor3 = TomPrimario
        CloseWindowButton.BorderSizePixel = 0
        CloseWindowButton.Position = UDim2.new(0, Largura-25, 0, 0)
        CloseWindowButton.Size = UDim2.new(0, 25, 0, 25)   
        CloseWindowButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        CloseWindowButton.Font = Enum.Font.GothamSemibold
        CloseWindowButton.TextSize = 14.000
        CloseWindowButton.TextWrapped = true
        CloseWindowButton.MouseButton1Click:Connect(function()
            aclosefunc()
            configsfunextras.working = false
            Main:Destroy()
        end)

        ContentWindows.ScrollBarThickness = 0
        ContentWindows.Name = "ContentWindows"
        ContentWindows.Parent = Main
        ContentWindows.BackgroundTransparency = 1
        ContentWindows.BorderSizePixel = 0
        ContentWindows.Position = UDim2.new(0, 0, 0, 25)
        ContentWindows.Size = UDim2.new(0, Largura, 0, Altura-25)
        ContentWindows.CanvasSize = UDim2.new(0, Largura, 0, 6)

        ButtonExtraOptions.MouseButton1Click:Connect(function()
            local CheckExtJan = ContentWindows:FindFirstChild("ContainerJanela - Funções Extras Aí Procê")
            if(CheckExtJan==nil)then
                janfuncextras(Main)
            else
                configsfunextras.working = false
                CheckExtJan:Destroy()
                local Childstoresize = ContentWindows:GetChildren()
                local newheightoffset = 0
                for i=1,#Childstoresize do
                    newheightoffset+=Childstoresize[i].Size.Height.Offset+7
                end
                ContentWindows.CanvasSize = UDim2.new(0, Largura, 0, newheightoffset+7)
            end
        end)
        
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
        local Scrolling = WinB:FindFirstChild("ContentWindows")

        ContainerJanela.Name = "ContainerJanela - "..Titulo
        ContainerJanela.Parent = Scrolling
        ContainerJanela.BackgroundColor3 = TomSecundario
        ContainerJanela.BorderSizePixel = 1
        ContainerJanela.BorderColor3 = Color3.fromRGB(10, 10, 10)
        ContainerJanela.Position = UDim2.new(0, 6, 0, Scrolling.CanvasSize.Height.Offset)
        ContainerJanela.Size = UDim2.new(0, Largura-12, 0, 25+5)
        
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

        local Childstoresize = Scrolling:GetChildren()
        local newheightoffset = 0
        for i=1,#Childstoresize do
            newheightoffset+=Childstoresize[i].Size.Height.Offset+7
        end
        Scrolling.CanvasSize = UDim2.new(0,0,0,newheightoffset+7)

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
        local TomPrimario = JanB.Parent.Parent.TituloContainer.BackgroundColor3
        local TomSecundario = Color3.new(TomPrimario.R+modpertom,TomPrimario.G+modpertom,TomPrimario.B+modpertom)
        local TomQuaternario = Color3.new(TomPrimario.R+(modpertom*3),TomPrimario.G+(modpertom*3),TomPrimario.B+(modpertom*3))
        local TomSextenario = Color3.new(TomPrimario.R+(modpertom*5),TomPrimario.G+(modpertom*5),TomPrimario.B+(modpertom*5))

        local Parentes = JanB:GetChildren()
        local PosMod = 0
        local lastcomp = 29
        for i=1,#Parentes do
            if(Parentes[i].Name=="ButCont")then
                PosMod+=25+2+4
                lastcomp = 25+2+4
            end
            if(Parentes[i].Name=="TogCont")then
                PosMod+=25+4
                lastcomp = 25+4
            end
            if(Parentes[i].Name=="DropCont" or Parentes[i].Name=="SliderCont")then
                PosMod+=40+4
                lastcomp = 40+4
            end
        end
        TogCont.Name = "TogCont"
        TogCont.Parent = JanB
        TogCont.BackgroundColor3 = TomSecundario
        TogCont.BorderSizePixel = 0
        TogCont.Position = UDim2.new(0, 4, 0, 30+PosMod)
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

        JanB.Size = UDim2.new(0,JanB.Size.Width.Offset,0,JanB.Size.Height.Offset+lastcomp-(lastcomp-29))
        local Childstoresize = JanB.Parent:GetChildren()
        local newheightoffset = 0
        for i=1,#Childstoresize do
            newheightoffset+=Childstoresize[i].Size.Height.Offset+7
        end
        JanB.Parent.CanvasSize = UDim2.new(0,0,0,newheightoffset+7)
    end,
    CriarButt = function (JanB,Titulo,afunc)
        local ButtonOnly = Instance.new("TextButton")
        
        local Largura = JanB.Parent.Size.Width.Offset
        local modpertom = 8/255
        local TomPrimario = JanB.Parent.Parent.TituloContainer.BackgroundColor3
        local TomQuaternario = Color3.new(TomPrimario.R+(modpertom*3),TomPrimario.G+(modpertom*3),TomPrimario.B+(modpertom*3))

        local Parentes = JanB:GetChildren()
        local PosMod = 0
        local lastcomp = 29
        for i=1,#Parentes do
            if(Parentes[i].Name=="ButCont")then
                PosMod+=25+2+4
                lastcomp = 25+2+4
            end
            if(Parentes[i].Name=="TogCont")then
                PosMod+=25+4
                lastcomp = 25+4
            end
            if(Parentes[i].Name=="DropCont" or Parentes[i].Name=="SliderCont")then
                PosMod+=40+4
                lastcomp = 40+4
            end
        end
        ButtonOnly.Name = "ButCont"
        ButtonOnly.Parent = JanB
        ButtonOnly.BackgroundColor3 = TomQuaternario
        ButtonOnly.Position = UDim2.new(0, 5, 0, 31+PosMod)
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
        
        JanB.Size = UDim2.new(0,JanB.Size.Width.Offset,0,JanB.Size.Height.Offset+lastcomp+(31-lastcomp))
        local Childstoresize = JanB.Parent:GetChildren()
        local newheightoffset = 0
        for i=1,#Childstoresize do
            newheightoffset+=Childstoresize[i].Size.Height.Offset+7
        end
        JanB.Parent.CanvasSize = UDim2.new(0,0,0,newheightoffset+7)
    end,
    CriarDrop = function (JanB,Titulo,ValorP,aConteudofunc,afunc)
        local Largura = JanB.Parent.Size.Width.Offset
        local modpertom = 8/255
        local TomPrimario = JanB.Parent.Parent.TituloContainer.BackgroundColor3
        local TomSecundario = Color3.new(TomPrimario.R+modpertom,TomPrimario.G+modpertom,TomPrimario.B+modpertom)
        local TomTerciario = Color3.new(TomPrimario.R+(modpertom*2),TomPrimario.G+(modpertom*2),TomPrimario.B+(modpertom*2))
        local TomQuaternario = Color3.new(TomPrimario.R+(modpertom*3),TomPrimario.G+(modpertom*3),TomPrimario.B+(modpertom*3))
        local TomSextenario = Color3.new(TomPrimario.R+(modpertom*5),TomPrimario.G+(modpertom*5),TomPrimario.B+(modpertom*5))

        local Parentes = JanB:GetChildren()
        local PosMod = 0
        local lastcomp = 44
        for i=1,#Parentes do
            if(Parentes[i].Name=="ButCont")then
                PosMod+=25+2+4
                lastcomp = 25+2+4
            end
            if(Parentes[i].Name=="TogCont")then
                PosMod+=25+4
                lastcomp = 25+4
            end
            if(Parentes[i].Name=="DropCont" or Parentes[i].Name=="SliderCont")then
                PosMod+=40+4
                lastcomp = 40+4
            end
        end
        local DropCont = Instance.new("Frame")
        DropCont.Name = "DropCont"
        DropCont.Parent = JanB
        DropCont.BorderSizePixel = 0
        DropCont.BackgroundColor3 = TomSecundario
        DropCont.Position = UDim2.new(0,4,0,30+PosMod)
        DropCont.Size = UDim2.new(0,Largura-20,0,40)
        
        local DropTit = Instance.new("TextLabel")
        DropTit.Name = "DropTit"
        DropTit.Parent = DropCont
        DropTit.BorderSizePixel = 0
        DropTit.BackgroundColor3 = TomSecundario
        DropTit.Position = UDim2.new(0,0,0,0)
        DropTit.Size = UDim2.new(0,Largura-22,0,14)
        DropTit.Font = Enum.Font.GothamSemibold
        DropTit.Text = Titulo
        DropTit.TextColor3 = Color3.fromRGB(255, 255, 255)
        DropTit.TextSize = 14.000
        DropTit.TextWrapped = true
        DropTit.TextXAlignment = Enum.TextXAlignment.Left
        
        local BoxSelect = Instance.new("TextButton")
        BoxSelect.Name = "BoxSelect"
        BoxSelect.Parent = DropCont
        BoxSelect.BorderSizePixel = 1
        BoxSelect.BorderColor3 = Color3.fromRGB(20,20,20)
        BoxSelect.BackgroundColor3 = TomQuaternario
        BoxSelect.Position = UDim2.new(0,1,0,40-22-1)
        BoxSelect.Size = UDim2.new(0,Largura-22,0,22)
        BoxSelect.Text = "   "..ValorP
        BoxSelect.TextColor3 = Color3.fromRGB(255, 255, 255)
        BoxSelect.TextSize = 14.000
        BoxSelect.TextWrapped = true
        BoxSelect.Font = Enum.Font.GothamSemibold
        BoxSelect.TextXAlignment = Enum.TextXAlignment.Left
        BoxSelect.TextYAlignment = Enum.TextYAlignment.Center
        

        local EnfeiteSeta = Instance.new("TextLabel")
        EnfeiteSeta.Name = "EnfeiteSeta"
        EnfeiteSeta.Parent = BoxSelect
        EnfeiteSeta.BorderSizePixel = 0
        EnfeiteSeta.BackgroundColor3 = TomQuaternario
        EnfeiteSeta.Position = UDim2.new(0,Largura-44,0,0)
        EnfeiteSeta.Size = UDim2.new(0,22,0,22)
        EnfeiteSeta.Font = Enum.Font.GothamSemibold
        EnfeiteSeta.Text = "↓"
        EnfeiteSeta.TextColor3 = TomSextenario
        EnfeiteSeta.TextSize = 14.000
        EnfeiteSeta.TextScaled = true

        BoxSelect.MouseButton1Click:Connect(function()
            local mostraostremmovel = BoxSelect:FindFirstChild("MostranoMovel")
            if (mostraostremmovel==nil)then
                local mostraostremmovel = Instance.new("ScrollingFrame")
                mostraostremmovel.Name = "MostranoMovel"
                mostraostremmovel.Parent = BoxSelect
                mostraostremmovel.BackgroundColor3 = TomTerciario
                mostraostremmovel.ScrollBarThickness = 0
                mostraostremmovel.BorderSizePixel=1
                mostraostremmovel.BorderColor3 = Color3.fromRGB(20,20,20)
                mostraostremmovel.Position = UDim2.new(0,0,0,22+2)
                mostraostremmovel.Size = UDim2.new(0,Largura-22,0,10*4)
                mostraostremmovel.ZIndex = 100

                local ostrem = aConteudofunc()
                for i=1,#ostrem do
                    local opcom = Instance.new("TextButton")
                    opcom.Name = "ButCont"
                    opcom.Parent = mostraostremmovel
                    opcom.BackgroundColor3 = TomQuaternario
                    opcom.Position = UDim2.new(0, 1, 0,(i-1)*16)
                    opcom.Size = UDim2.new(0, Largura-22-2, 0, 15)
                    opcom.BorderSizePixel = 1
                    opcom.BorderColor3 = Color3.fromRGB(20,20,20)
                    opcom.Text = ostrem[i]
                    opcom.TextColor3 = Color3.fromRGB(255, 255, 255)
                    opcom.Font = Enum.Font.GothamSemibold
                    opcom.TextSize = 10.000
                    opcom.TextWrapped = true
                    opcom.ZIndex = 101
                    opcom.MouseButton1Click:Connect(function()
                        afunc(ostrem[i])
                        mostraostremmovel.Parent.Text = "   "..ostrem[i]
                        mostraostremmovel:Destroy()
                    end)
                end
                
                mostraostremmovel.CanvasSize = UDim2.new(0,0,0,#ostrem*16)
            else
                mostraostremmovel:Destroy()
            end
        end)
        JanB.Size = UDim2.new(0,JanB.Size.Width.Offset,0,JanB.Size.Height.Offset+lastcomp-(lastcomp-44))
        local Childstoresize = JanB.Parent:GetChildren()
        local newheightoffset = 0
        for i=1,#Childstoresize do
            newheightoffset+=Childstoresize[i].Size.Height.Offset+7
        end
        JanB.Parent.CanvasSize = UDim2.new(0,0,0,newheightoffset+7)
    end,
    CriarSlider = function (JanB,Titulo,ValorP,Min,Max,afunc)
        local Largura = JanB.Parent.Size.Width.Offset
        local Altura = JanB.Parent.Size.Height.Offset
        local modpertom = 8/255
        local TomPrimario = JanB.Parent.Parent.TituloContainer.BackgroundColor3
        local TomSecundario = Color3.new(TomPrimario.R+modpertom,TomPrimario.G+modpertom,TomPrimario.B+modpertom)
        local TomTerciario = Color3.new(TomPrimario.R+(modpertom*2),TomPrimario.G+(modpertom*2),TomPrimario.B+(modpertom*2))
        local TomQuaternario = Color3.new(TomPrimario.R+(modpertom*3),TomPrimario.G+(modpertom*3),TomPrimario.B+(modpertom*3))
        local TomQuintenario = Color3.new(TomPrimario.R+(modpertom*4),TomPrimario.G+(modpertom*4),TomPrimario.B+(modpertom*4))
        local TomSextenario = Color3.new(TomPrimario.R+(modpertom*5),TomPrimario.G+(modpertom*5),TomPrimario.B+(modpertom*5))

        local Parentes = JanB:GetChildren()
        local PosMod = 0
        local lastcomp = 44
        for i=1,#Parentes do
            if(Parentes[i].Name=="ButCont")then
                PosMod+=25+2+4
                lastcomp = 25+2+4
            end
            if(Parentes[i].Name=="TogCont")then
                PosMod+=25+4
                lastcomp = 25+4
            end
            if(Parentes[i].Name=="DropCont" or Parentes[i].Name=="SliderCont")then
                PosMod+=40+4
                lastcomp = 40+4
            end
        end
        local SliderCont = Instance.new("Frame")
        SliderCont.Name = "SliderCont"
        SliderCont.Parent = JanB
        SliderCont.BorderSizePixel = 0
        SliderCont.BackgroundColor3 = TomSecundario
        SliderCont.Position = UDim2.new(0,4,0,30+PosMod)
        SliderCont.Size = UDim2.new(0,Largura-20,0,40)
        
        local SliderTit = Instance.new("TextLabel")
        SliderTit.Name = "SliderTit"
        SliderTit.Parent = SliderCont
        SliderTit.BorderSizePixel = 0
        SliderTit.BackgroundColor3 = TomSecundario
        SliderTit.Position = UDim2.new(0,0,0,0)
        SliderTit.Size = UDim2.new(0,Largura-22,0,14)
        SliderTit.Font = Enum.Font.GothamSemibold
        SliderTit.Text = Titulo
        SliderTit.TextColor3 = Color3.fromRGB(255, 255, 255)
        SliderTit.TextSize = 14.000
        SliderTit.TextWrapped = true
        SliderTit.TextXAlignment = Enum.TextXAlignment.Left
        
        local Slider = Instance.new("Frame")
        Slider.Name = "Slider"
        Slider.Parent = SliderCont
        Slider.BorderSizePixel = 0
        Slider.BackgroundColor3 = TomSecundario
        Slider.Position = UDim2.new(0,1,0,40-22-1)
        Slider.Size = UDim2.new(0,Largura-22,0,22)

        local SliderBar = Instance.new("Frame")
        SliderBar.Name = "SliderBar"
        SliderBar.Parent = Slider
        SliderBar.BorderSizePixel = 0
        SliderBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        SliderBar.BackgroundTransparency = 0.3
        SliderBar.Position = UDim2.new(0,8,0,11-3)
        SliderBar.Size = UDim2.new(0,Largura-22-16,0,8)
        local redondar = Instance.new('UICorner')
        redondar.Name = "ArredondaSaporra"
        redondar.Parent = SliderBar

        local SliderBarPreenchido = Instance.new("Frame")
        SliderBarPreenchido.Name = "SliderBar"
        SliderBarPreenchido.Parent = SliderBar
        SliderBarPreenchido.BorderSizePixel = 0
        SliderBarPreenchido.BackgroundColor3 = TomQuintenario
        SliderBarPreenchido.Position = UDim2.new(0,0,0,0)
        SliderBarPreenchido.Size = UDim2.new(0,0,0,8)
        local redondar2 = Instance.new('UICorner')
        redondar2.Name = "ArredondaSaporra"
        redondar2.Parent = SliderBarPreenchido
        
        local SliderHandle = Instance.new("TextButton")
        SliderHandle.Name = "SliderHandle"
        SliderHandle.Text = ""
        SliderHandle.Parent = SliderBar
        SliderHandle.Active = true
        SliderHandle.Draggable = true
        SliderHandle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        SliderHandle.BorderSizePixel = 0
        SliderHandle.BackgroundTransparency = 0.7
        SliderHandle.Position = UDim2.new(0, -8+(((ValorP-Min)/(Max-Min))*SliderBar.Size.X.Offset), 0, -4)
        SliderHandle.Size = UDim2.new(0, 16, 0, 16)
        local redondar3 = Instance.new('UICorner')
        redondar3.Name = "ArredondaSaporra"
        redondar3.Parent = SliderHandle

        game:GetService("RunService").RenderStepped:Connect(function()
            local Move = SliderHandle.Position.X.Offset
            if(Move<-8) then Move = -8 end
            if(Move>SliderBar.Size.X.Offset-8) then Move = SliderBar.Size.X.Offset-8 end
            SliderHandle.Position = UDim2.new(0, Move, 0, -4)
            SliderBarPreenchido.Size = UDim2.new(0,Move+8,0,8)
        end)
        SliderHandle.MouseButton1Up:Connect(function()
            local PorcentagemSlider = SliderBarPreenchido.Size.X.Offset/SliderBar.Size.X.Offset
            local ValorRetorno = ((Max-Min)*PorcentagemSlider)+Min
            afunc(ValorRetorno,PorcentagemSlider)
        end)

        JanB.Size = UDim2.new(0,JanB.Size.Width.Offset,0,JanB.Size.Height.Offset+lastcomp-(lastcomp-44))
        local Childstoresize = JanB.Parent:GetChildren()
        local newheightoffset = 0
        for i=1,#Childstoresize do
            newheightoffset+=Childstoresize[i].Size.Height.Offset+7
        end
        JanB.Parent.CanvasSize = UDim2.new(0,0,0,newheightoffset+7)
    end
}
return Funqis
