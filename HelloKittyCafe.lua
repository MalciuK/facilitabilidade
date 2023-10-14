loadstring(game:HttpGet('https://raw.githubusercontent.com/1uaxx/yunv2/main/librarysource.lua'))()
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
    delaimax = 40,
    travad = true,
    praqdelai = nil,
    autowork = false,
    autochest = false,
    pushabolo = false
}

local Library = initLibrary()
local Window = Library:Load({
    name = "Super Hack do Niquinistiquiniquis pra Cauany",
    sizeX = 425,
    sizeY = 165,
    color = Color3.fromRGB(255, 255, 255)
})
function  KillMe()
    Window:Hide()
end

local Tab = Window:Tab("Cafezinho Reloquiti")
local Inicio = Tab:Section { name = "Inicio"} 

local OqMostrar = game.Workspace:GetChildren()
local Cafe = false
local Kuromi = false
for i=1, #OqMostrar do
    if(OqMostrar[i].Name == "TreasureEntity") then
        Cafe=true
    end
    if(OqMostrar[i].Name == "MapItem") then
        Kuromi=true
    end
end

if(Cafe)then
    Inicio:Toggle{
        Name = "Pegar Baus",
        flag = "bau",
        callback = function(oq)
            config.autochest = oq
        end
    }
    Inicio:Toggle{
        Name = "AutoWork",
        flag = "work",
        callback = function(oq)
            config.autowork = oq
        end
    }
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
    Inicio:Toggle{
        Name = "Salvar Bolinhos",
        flag =" praqisso mds",
        callback = function(oq)
            config.pushabolo=oq
        end
    }
    Inicio:Button{
        Name = "Doces Kuromii",
        callback = function()
            Pushadoce()
        end
    }

    function Pushadoce()
        local osdoce = game.Workspace.MapItem.Gold:GetChildren()
        for i=1,#osdoce do
            osdoce[i]:GetChildren()[1].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        end
    end
    
    game:GetService("RunService").RenderStepped:Connect(function()
        if(config.pushabolo)then
            for i=1,#game.Players:GetChildren() do
                if(game.Players:GetChildren()[i].Character.Humanoid.WalkSpeed==6 and game.Players:GetChildren()[i] ~= game.Players.LocalPlayer) then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored=true
                    game.Players:GetChildren()[i].Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                end
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
Inicio:Slider{
    Name = "Velocidade",
    Default = 1,
    Min = 1,
    Max = 3.75,
    Decimals = 2,
    Flag = "walkspeed",
    callback = function(value)
        MudaVelocidade(value)
    end
}

Inicio:Button{
    Name = "Fechar UI",
    callback = function()
        config.autowork=false
        config.autochest=false
        KillMe()
    end
}
