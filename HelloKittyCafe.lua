local input = loadstring(game:HttpGet('https://pastebin.com/raw/dYzQv3d8'))()
function GetObject(Astring)
    local ospedaco = Astring:split(".")
    local manda = game
    for i=1,#ospedaco do
        manda = manda:FindFirstChild(ospedaco[i])
    end
    return manda
end
local config = {
    esperarbaus = false,
    delai = 0,
    travad = true,
    praqdelai = nil,
    autowork = false,
    autochest = false,
    keroppi = false,
    transs = false,
    winkeroppi = false,
    doceku = false
}

local OqMostrar = game.Workspace:GetChildren()
local Cafe = false
local Kuromi = false
local Keroppi = false
for i=1, #OqMostrar do
    if(OqMostrar[i].Name == "TreasureEntity") then
        Cafe=true
    end
    if(OqMostrar[i].Name == "MapItem") then
        Kuromi=true
    end
    if(OqMostrar[i].Name == "Machinery") then
        Keroppi=true
    end
end

if(Cafe)then
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
        TitleJogo.Text = "Hello Kitty Cafe"
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
                config.autowork = false
            else
                if not(ChkBox.TogState.Visible)then
                    ChkBox.TogState.Visible = true
                    config.autowork = true
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
        TogTitle.Text = "Trabalhar Automatico"
        TogTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
        TogTitle.TextSize = 14.000
        TogTitle.TextWrapped = true
        TogTitle.TextXAlignment = Enum.TextXAlignment.Left
    
        TogCont = TogCont:Clone()
        TogCont.Parent = ContainerFunc
        TogCont.Position = UDim2.new(0, 5, 0, 31+25+5)
        TogCont.TogTitle.Text = "Pegar Baús"
        TogCont.MouseButton1Click:Connect(function()
            if(TogCont.ChkBox.TogState.Visible)then
                TogCont.ChkBox.TogState.Visible = false
                config.autochest = false
            else
                if not(TogCont.ChkBox.TogState.Visible)then
                    TogCont.ChkBox.TogState.Visible = true
                    config.autochest = true
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
            config.autochest = false
            config.autowork = false
            h:Destroy()
        end)
    end
    CriarJanelaBase(300,(5*25)+(6*5)+2,Color3.new(0.227450, 0.050980, 0.168627))
    local travacliente = false
    local travabi = 0
    game:GetService("RunService").RenderStepped:Connect(function() 
        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
        if not(config.travad)then
            if(config.delai==0) then
                if(config.praqdelai=="F")then input.press(Enum.KeyCode.F) end
                if(config.praqdelai=="Spawnar")then TchecaBau() end
                config.travad = true
            else
                config.delai-=1
            end        
        end
        if (config.autochest and config.autowork)then

            --Removendo Bausitos
            if(config.autochest)then
                game.Players.LocalPlayer.PlayerGui.UIPlayer.UIHint.Enabled = true
                local Bauses = game.workspace.TreasureEntity:GetChildren()
                for i=1,#Bauses do
                    print("Bau",i,"Encontrado")
                end
                if(#Bauses>0)then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Bauses[1]:GetChildren()[2].CFrame
                    input.press(Enum.KeyCode.F)
                else
                    --Removendo Pedidos
                    if(config.autowork)then
                        game.Players.LocalPlayer.PlayerGui.UIPlayer.UIHint.Enabled = false
                        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
                        local Limpa = {}
                        local osponto = game.workspace.OperatePoints:GetChildren()
                        local ostrue = {}
                        for i=1,#osponto do
                            if(osponto[i].CFrame.y>3.95000 and osponto[i].CFrame.y<3.95002)then
                                table.insert(ostrue,osponto[i])
                            end
                            if(osponto[i].CFrame.y>28.65410 and osponto[i].CFrame.y<28.65412)then
                                table.insert(ostrue,osponto[i])
                            end
                            if(osponto[i].CFrame.y>28.86200 and osponto[i].CFrame.y<28.86202)then
                                table.insert(ostrue,osponto[i])
                            end
                        end
                        Limpa = ostrue
                        if(#Limpa>0)then
                            print("Limpando")
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Limpa[1].CFrame
                            input.press(Enum.KeyCode.F)
                        else
                            local Pedidos = {}
                            local osponto = game.workspace.OperatePoints:GetChildren()
                            local ostrue = {}
                            for i=1,#osponto do
                                if(osponto[i].CFrame.y>6.65000 and osponto[i].CFrame.y<6.65002)then
                                    table.insert(ostrue,osponto[i])
                                end
                                if(osponto[i].CFrame.y>6.92000 and osponto[i].CFrame.y<6.92002)then
                                    table.insert(ostrue,osponto[i])
                                end
                                if(osponto[i].CFrame.y>6.83000 and osponto[i].CFrame.y<6.83002)then
                                    table.insert(ostrue,osponto[i])
                                end 
                                if(osponto[i].CFrame.y>7.01000 and osponto[i].CFrame.y<7.01002)then
                                    table.insert(ostrue,osponto[i])
                                end
                                if(osponto[i].CFrame.y>7.10000 and osponto[i].CFrame.y<7.10002)then
                                    table.insert(ostrue,osponto[i])
                                end
                                if(osponto[i].CFrame.y>7.28000 and osponto[i].CFrame.y<7.28002)then
                                    table.insert(ostrue,osponto[i])
                                end 
                                if(osponto[i].CFrame.y>7.37000 and osponto[i].CFrame.y<7.37002)then
                                    table.insert(ostrue,osponto[i])
                                end

                                if(osponto[i].CFrame.y>31.53410 and osponto[i].CFrame.y<31.53412)then
                                    table.insert(ostrue,osponto[i])
                                end
                                if(osponto[i].CFrame.y>31.62410 and osponto[i].CFrame.y<31.62412)then
                                    table.insert(ostrue,osponto[i])
                                end  
                                if(osponto[i].CFrame.y>31.71410 and osponto[i].CFrame.y<31.71412)then
                                    table.insert(ostrue,osponto[i])
                                end
                                if(osponto[i].CFrame.y>31.92200 and osponto[i].CFrame.y<31.92201)then
                                    table.insert(ostrue,osponto[i])
                                end
                                if(osponto[i].CFrame.y>31.98410 and osponto[i].CFrame.y<31.98412)then
                                    table.insert(ostrue,osponto[i])
                                end 
                                if(osponto[i].CFrame.y>32.07410 and osponto[i].CFrame.y<32.07412)then
                                    table.insert(ostrue,osponto[i])
                                end 
                                if(osponto[i].CFrame.y>32.19200 and osponto[i].CFrame.y<32.19201)then
                                    table.insert(ostrue,osponto[i])
                                end 
                            end
                            Pedidos = ostrue
                            if(#Pedidos>0)then
                                print("Aceitando Pedido")
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pedidos[1].CFrame
                                input.press(Enum.KeyCode.F)
                            else      
                                if(travabi==0)then  
                                    travabi+=1        
                                    local MaquinaEEntrega = {}
                                    local osponto = game.workspace.ClientPathPoint:GetChildren()
                                    for i=1,#osponto do
                                        if(osponto[i].name=="PathArrow" and osponto[i].Transparency==0)then
                                            table.insert(MaquinaEEntrega,osponto[i])
                                        end
                                    end
                                    if(#MaquinaEEntrega>0)then
                                        print("Preparando Pedido")
                                        local concerta = CFrame.new(Vector3.new(MaquinaEEntrega[1].CFrame.x,MaquinaEEntrega[1].CFrame.y-3,MaquinaEEntrega[1].CFrame.z))                            
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = concerta
                                        input.press(Enum.KeyCode.F)
                                    else
                                        local PedidosE = {}
                                        local osponto = game.workspace.SceneModels:GetChildren()
                                        local ostrue = {}
                                        for i=1,#osponto do
                                            if(osponto[i].Name=="SB DianCanTai 001 Pink")then
                                                local osponto2 = osponto[i].Root.Items:GetChildren()
                                                for j=1,#osponto2 do
                                                    if(osponto2[j].Transparency == 0) then
                                                        table.insert(ostrue,osponto2[j])
                                                    end
                                                end
                                            end
                                        end
                                        PedidosE = ostrue
                                        if(#PedidosE>0)then
                                            print("Lendo Pedido")
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = PedidosE[1].CFrame
                                            input.press(Enum.KeyCode.F)
                                        end
                                    end
                                else
                                    travabi+=1
                                    local Porta = {}
                                    local osponto = game.workspace.OperatePoints:GetChildren()
                                    for i=1,#osponto do
                                        if(osponto[i].CFrame.y==5.5)then
                                            table.insert(Porta,osponto[i])
                                        end
                                    end
                                    if(#Porta>0)then
                                        print("Atendendo Porta")
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Porta[1].CFrame
                                        input.press(Enum.KeyCode.F)
                                    end
                                end
                                if(travabi>=2)then travabi=0 end
                            end
                        end
                    end
                end
            end
        else
            --Removendo Bausitos
            if(config.autochest)then
                game.Players.LocalPlayer.PlayerGui.UIPlayer.UIHint.Enabled = true
                local Bauses = game.workspace.TreasureEntity:GetChildren()
                for i=1,#Bauses do
                    print("Bau",i,"Encontrado")
                end
                if(#Bauses>0)then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Bauses[1]:GetChildren()[2].CFrame
                    input.press(Enum.KeyCode.F)
                end
            else
                --Removendo Pedidos
                if(config.autowork)then
                    game.Players.LocalPlayer.PlayerGui.UIPlayer.UIHint.Enabled = false
                    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
                    local Limpa = {}
                    local osponto = game.workspace.OperatePoints:GetChildren()
                    local ostrue = {}
                    for i=1,#osponto do
                        if(osponto[i].CFrame.y>3.95000 and osponto[i].CFrame.y<3.95002)then
                            table.insert(ostrue,osponto[i])
                        end
                        if(osponto[i].CFrame.y>28.65410 and osponto[i].CFrame.y<28.65412)then
                            table.insert(ostrue,osponto[i])
                        end
                        if(osponto[i].CFrame.y>28.86200 and osponto[i].CFrame.y<28.86202)then
                            table.insert(ostrue,osponto[i])
                        end
                    end
                    Limpa = ostrue
                    if(#Limpa>0)then
                        print("Limpando")
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Limpa[1].CFrame
                        input.press(Enum.KeyCode.F)
                    else
                        local Pedidos = {}
                        local osponto = game.workspace.OperatePoints:GetChildren()
                        local ostrue = {}
                        for i=1,#osponto do
                            if(osponto[i].CFrame.y>6.65000 and osponto[i].CFrame.y<6.65002)then
                                table.insert(ostrue,osponto[i])
                            end
                            if(osponto[i].CFrame.y>6.92000 and osponto[i].CFrame.y<6.92002)then
                                table.insert(ostrue,osponto[i])
                            end
                            if(osponto[i].CFrame.y>6.83000 and osponto[i].CFrame.y<6.83002)then
                                table.insert(ostrue,osponto[i])
                            end 
                            if(osponto[i].CFrame.y>7.01000 and osponto[i].CFrame.y<7.01002)then
                                table.insert(ostrue,osponto[i])
                            end
                            if(osponto[i].CFrame.y>7.10000 and osponto[i].CFrame.y<7.10002)then
                                table.insert(ostrue,osponto[i])
                            end
                            if(osponto[i].CFrame.y>7.28000 and osponto[i].CFrame.y<7.28002)then
                                table.insert(ostrue,osponto[i])
                            end 
                            if(osponto[i].CFrame.y>7.37000 and osponto[i].CFrame.y<7.37002)then
                                table.insert(ostrue,osponto[i])
                            end

                            if(osponto[i].CFrame.y>31.53410 and osponto[i].CFrame.y<31.53412)then
                                table.insert(ostrue,osponto[i])
                            end
                            if(osponto[i].CFrame.y>31.62410 and osponto[i].CFrame.y<31.62412)then
                                table.insert(ostrue,osponto[i])
                            end  
                            if(osponto[i].CFrame.y>31.71410 and osponto[i].CFrame.y<31.71412)then
                                table.insert(ostrue,osponto[i])
                            end
                            if(osponto[i].CFrame.y>31.92200 and osponto[i].CFrame.y<31.92201)then
                                table.insert(ostrue,osponto[i])
                            end
                            if(osponto[i].CFrame.y>31.98410 and osponto[i].CFrame.y<31.98412)then
                                table.insert(ostrue,osponto[i])
                            end 
                            if(osponto[i].CFrame.y>32.07410 and osponto[i].CFrame.y<32.07412)then
                                table.insert(ostrue,osponto[i])
                            end 
                            if(osponto[i].CFrame.y>32.19200 and osponto[i].CFrame.y<32.19201)then
                                table.insert(ostrue,osponto[i])
                            end 
                        end
                        Pedidos = ostrue
                        if(#Pedidos>0)then
                            print("Aceitando Pedido")
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pedidos[1].CFrame
                            input.press(Enum.KeyCode.F)
                        else      
                            if(travabi==0)then  
                                travabi+=1        
                                local MaquinaEEntrega = {}
                                local osponto = game.workspace.ClientPathPoint:GetChildren()
                                for i=1,#osponto do
                                    if(osponto[i].name=="PathArrow" and osponto[i].Transparency==0)then
                                        table.insert(MaquinaEEntrega,osponto[i])
                                    end
                                end
                                if(#MaquinaEEntrega>0)then
                                    print("Preparando Pedido")
                                    local concerta = CFrame.new(Vector3.new(MaquinaEEntrega[1].CFrame.x,MaquinaEEntrega[1].CFrame.y-3,MaquinaEEntrega[1].CFrame.z))                            
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = concerta
                                    input.press(Enum.KeyCode.F)
                                else
                                    local PedidosE = {}
                                    local osponto = game.workspace.SceneModels:GetChildren()
                                    local ostrue = {}
                                    for i=1,#osponto do
                                        if(osponto[i].Name=="SB DianCanTai 001 Pink")then
                                            local osponto2 = osponto[i].Root.Items:GetChildren()
                                            for j=1,#osponto2 do
                                                if(osponto2[j].Transparency == 0) then
                                                    table.insert(ostrue,osponto2[j])
                                                end
                                            end
                                        end
                                    end
                                    PedidosE = ostrue
                                    if(#PedidosE>0)then
                                        print("Lendo Pedido")
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = PedidosE[1].CFrame
                                        input.press(Enum.KeyCode.F)
                                    end
                                end
                            else
                                travabi+=1
                                local Porta = {}
                                local osponto = game.workspace.OperatePoints:GetChildren()
                                for i=1,#osponto do
                                    if(osponto[i].CFrame.y==5.5)then
                                        table.insert(Porta,osponto[i])
                                    end
                                end
                                if(#Porta>0)then
                                    print("Atendendo Porta")
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Porta[1].CFrame
                                    input.press(Enum.KeyCode.F)
                                end
                            end
                            if(travabi>=2)then travabi=0 end
                        end
                    end
                end
            end
        end
    end)
end
if(Kuromi)then
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
        TitleJogo.Text = "Hello Kitty Cafe"
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
                config.doceku = false
            else
                if not(ChkBox.TogState.Visible)then
                    ChkBox.TogState.Visible = true
                    config.doceku = true
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
        TogTitle.Text = "Pegar Doces da Kuromii"
        TogTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
        TogTitle.TextSize = 14.000
        TogTitle.TextWrapped = true
        TogTitle.TextXAlignment = Enum.TextXAlignment.Left

        ButtonOnly.Name = "Matador"
        ButtonOnly.Parent = ContainerFunc
        ButtonOnly.BackgroundColor3 = ChkBox.BackgroundColor3
        ButtonOnly.Position = UDim2.new(0, 5, 0, 31+30)
        ButtonOnly.Size = UDim2.new(0, Largura-20, 0, 25)
        ButtonOnly.BorderSizePixel = 1
        ButtonOnly.BorderColor3 = Color3.fromRGB(10,10,10)
        ButtonOnly.Text = "Fechar UI"
        ButtonOnly.TextColor3 = Color3.fromRGB(255, 255, 255)
        ButtonOnly.Font = Enum.Font.GothamSemibold
        ButtonOnly.TextSize = 14.000
        ButtonOnly.TextWrapped = true
        ButtonOnly.MouseButton1Click:Connect(function()
            config.doceku = false
            h:Destroy()
        end)
    end
    CriarJanelaBase(300,(4*25)+(5*5)+2,Color3.new(0.227450, 0.050980, 0.168627))

    function Pushadoce()
        local osdoce = game.Workspace.MapItem.Gold:GetChildren()
        for i=1,#osdoce do
            osdoce[i]:GetChildren()[1].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        end
    end
    
    game:GetService("RunService").RenderStepped:Connect(function() 
        if(config.doceku)then
            Pushadoce()
        end
    end)
    -- Inicio:Toggle{
    --     Name = "Salvar Bolinhos",
    --     flag =" praqisso mds",
    --     callback = function(oq)
    --         config.transs=oq
    --         Transparecer(game.Workspace.DengDaiQu:GetChildren())
    --     end
    -- }
    -- function Transparecer(coisas)
    --     if(config.transs) then
    --         uq = 0.9
    --     else
    --         uq = 0
    --     end
    --     for i=1,#coisas do
    --         if(coisas[i]:GetChildren())then
    --             Transparecer(coisas[i])
    --         end
    --         if(coisas[i].ClassName == "MeshPart" or coisas[i].ClassName == "Part")then
    --             coisas[i].Transparency = uq
    --         end
    --     end
    -- end
end
if(Keroppi)then
    
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
        TitleJogo.Text = "Hello Kitty Cafe"
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
                config.keroppi = false
            else
                if not(ChkBox.TogState.Visible)then
                    ChkBox.TogState.Visible = true
                    config.keroppi = true
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
        TogTitle.Text = "Keroppi Auto Win"
        TogTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
        TogTitle.TextSize = 14.000
        TogTitle.TextWrapped = true
        TogTitle.TextXAlignment = Enum.TextXAlignment.Left

        ButtonOnly.Name = "Matador"
        ButtonOnly.Parent = ContainerFunc
        ButtonOnly.BackgroundColor3 = ChkBox.BackgroundColor3
        ButtonOnly.Position = UDim2.new(0, 5, 0, 31+30)
        ButtonOnly.Size = UDim2.new(0, Largura-20, 0, 25)
        ButtonOnly.BorderSizePixel = 1
        ButtonOnly.BorderColor3 = Color3.fromRGB(10,10,10)
        ButtonOnly.Text = "Fechar UI"
        ButtonOnly.TextColor3 = Color3.fromRGB(255, 255, 255)
        ButtonOnly.Font = Enum.Font.GothamSemibold
        ButtonOnly.TextSize = 14.000
        ButtonOnly.TextWrapped = true
        ButtonOnly.MouseButton1Click:Connect(function()
            config.keroppi = false
            h:Destroy()
        end)
    end
    CriarJanelaBase(300,(4*25)+(5*5)+2,Color3.new(0.227450, 0.050980, 0.168627))

    local osbaparr = {}
    local osbapa = game.Workspace:GetChildren()
    for i=1,#osbapa do
        for j=1,#osbapa[i]:GetChildren() do
            for k=1,#osbapa[i]:GetChildren()[j]:GetChildren() do
                if(osbapa[i]:GetChildren()[j]:GetChildren()[k].Name == "ZS WAI DiaoXiang Keroppi YunDong 002")then
                    print("Kerorrola")
                    table.insert(osbaparr,osbapa[i]:GetChildren()[j]:GetChildren()[k].Root)
                end
            end
        end
    end

    game:GetService("RunService").RenderStepped:Connect(function()
        -- if(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.y<=5 and game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.y>=0 and config.winkeroppi)then
        --     config.winkeroppi = false
        -- end
        if(config.keroppi)then
            local reset = true
            for i=1,#game.Players:GetChildren() do
                for j=1,#osbaparr do
                    local dist = (osbaparr[j].Position-game.Players:GetChildren()[i].Character.HumanoidRootPart.Position).magnitude
                    if(dist <= 130)then
                        reset = false
                        if not(config.winkeroppi) then
                            config.winkeroppi = true
                            local concerta = CFrame.new(osbaparr[j].CFrame.x,osbaparr[j].CFrame.y+5,osbaparr[j].CFrame.z)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = concerta
                        end
                    end
                end
            end
            if(reset)then
                config.winkeroppi = false
            end
        end
    end)
end

function MudaVelocidade(q)
    if(q==1)then game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16 end
    if(q==2)then game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 30 end
    if(q==3)then game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 60 end
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16*q
end
