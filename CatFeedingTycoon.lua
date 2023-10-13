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
function StartaCom(astring,pedaco)
    return string.sub(astring,1,string.len(pedaco))==pedaco
end
function TerminaCom(astring,pedaco)
    return string.sub(astring,string.len(astring)-string.len(pedaco)+1,string.len(astring))==pedaco
end
local config = {
    meuplot = nil,
    rebirtano = false,
    meuchao = nil,
    entregou = false,
    feed = false
}
print((tonumber("3")), tonumber("3.2"))
local Library = initLibrary()
local Window = Library:Load({
    name = "Super Hack do Niquinistiquiniquis",
    sizeX = 425,
    sizeY = 165,
    color = Color3.fromRGB(255, 255, 255)
})
function  KillMe()
    Window:Hide()
end

local Tab = Window:Tab("Cat Feeding Simulator")
local Inicio = Tab:Section { name = "Inicio"}

local pair = Inicio:Button{
    Name="Atualiza Plot",
    callback=function()
        PegaPlot()
    end
}
local SliderSpeed = {}
local FeedToggle = {}
local KillUIButton = {}
local DexButton = {}

function MontaOResto()
    FeedToggle = Inicio:Toggle{
        Name="Auto Feed Gatin",
        flag="autofeed",
        callback=function(q)
            config.feed = q
        end
    }
    config.feed = config.rebirtano
    config.rebirtano = false

    game:GetService("RunService").RenderStepped:Connect(function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = config.feed
        if(config.feed)then
            -- game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
            local Fuuds = config.meuplot.Int_Pickups:GetChildren()
            if(#Fuuds>0 or config.entregou)then
                local concerta = CFrame.new(Vector3.new(config.meuchao.CFrame.x,config.meuchao.CFrame.y+3,config.meuchao.CFrame.z))
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = concerta
                for i=1,#Fuuds do
                    if(#Fuuds[i]:GetChildren()>0) then
                        local xuxa = Fuuds[i]:GetChildren()[1]:GetChildren()
                        for j=1,#xuxa do
                            config.entregou = false
                            xuxa[j].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                        end
                    end
                end
                -- for i=1,#Fuuds do
                --     if(#Fuuds[1]:GetChildren()>0) then
                --         function ArrumaValoresAltura(pocote1, pocote2)
                --             local valornum1 = pocote1:GetChildren()[1]:GetChildren()[#pocote1:GetChildren()[1]:GetChildren()].CFrame.y
                --             local valornum2 = pocote2:GetChildren()[1]:GetChildren()[#pocote2:GetChildren()[1]:GetChildren()].CFrame.y
                --             return valornum1 < valornum2
                --         end
                --         table.sort(Fuuds, ArrumaValoresAltura)
                --         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Fuuds[1]:GetChildren()[1]:GetChildren()[#Fuuds[1]:GetChildren()[1]:GetChildren()].CFrame
                --     end
                -- end
            else
                local meumanevalorstr = game.Players.LocalPlayer.PlayerGui.MainHud.TopHud.Money.Title.Text
                local meumaneModnum = string.sub(meumanevalorstr,#meumanevalorstr,#meumanevalorstr)
                local meumanevalornum = nil
                if(meumaneModnum=="K")then
                    meumanevalornum = tonumber(string.sub(meumanevalorstr,1,#meumanevalorstr-1))*1000
                else
                    if(meumaneModnum=="M") then
                        meumanevalornum = tonumber(string.sub(meumanevalorstr,1,#meumanevalorstr-1))*1000000
                    else
                        meumanevalornum = tonumber(string.sub(meumanevalorstr,1,#meumanevalorstr))
                    end
                end
                print(meumanevalornum)

                local osbuto = game.Players.LocalPlayer.PlayerGui.MainHud.Boards:GetChildren()

                function ArrumaValoresPrice(buto1, buto2)
                    local valorstr1 = buto1:WaitForChild("Price").Text
                    if(valorstr1=="FREE")then valorstr1 = "$0" end
                    local Modnum1 = string.sub(valorstr1,#valorstr1,#valorstr1)
                    local valornum1 = nil
                    if(Modnum1=="K")then
                        valornum1 = tonumber(string.sub(valorstr1,2,#valorstr1-1))*1000
                    else
                        if(Modnum1=="M") then
                            valornum1 = tonumber(string.sub(valorstr1,2,#valorstr1-1))*1000000
                        else
                            valornum1 = tonumber(string.sub(valorstr1,2,#valorstr1))
                        end
                    end

                    local valorstr2 = buto2:WaitForChild("Price").Text
                    if(valorstr2=="FREE")then valorstr2 = "$0" end
                    local Modnum2 = string.sub(valorstr2,#valorstr2,#valorstr2)
                    local valornum2 = nil
                    if(Modnum2=="K")then
                        valornum2 = tonumber(string.sub(valorstr2,2,#valorstr2-1))*1000
                    else
                        if(Modnum2=="M") then
                            valornum2 = tonumber(string.sub(valorstr2,2,#valorstr2-1))*1000000
                        else
                            valornum2 = tonumber(string.sub(valorstr2,2,#valorstr2))
                        end
                    end

                    return valornum1 < valornum2
                end

                table.sort(osbuto, ArrumaValoresPrice)

                for i=1,#osbuto do
                    if(StartaCom(osbuto[i].Name,"[GAMEPASS]") or StartaCom(osbuto[i].Name,"VIP")) then
                    else
                        if(StartaCom(osbuto[i].Name,"Rebirth") or TerminaCom(osbuto[i].Name,"Meal") or TerminaCom(osbuto[i].Name,"Biscuit") or TerminaCom(osbuto[i].Name,"Food") or StartaCom(osbuto[i].Name,"Upgrade Speed")) then
                            local valorstr = osbuto[i]:WaitForChild("Price").Text
                            if(valorstr=="FREE")then valorstr = "$0" end
                            local Modnum = string.sub(valorstr,#valorstr,#valorstr)
                            local valornum = nil
                            if(Modnum=="K")then
                                valornum = tonumber(string.sub(valorstr,2,#valorstr-1))*1000
                            else
                                if(Modnum=="M") then
                                    valornum = tonumber(string.sub(valorstr,2,#valorstr-1))*1000000
                                else
                                    valornum = tonumber(string.sub(valorstr,2,#valorstr))
                                end
                            end
                            -- print(meumanevalornum,valornum)

                            if(meumanevalornum>=valornum or osbuto[i].Name == "Insert Food")then
                                if(osbuto[i].Name == "Insert Food")then
                                    config.entregou = true
                                end
                                local Obodao = config.meuplot:WaitForChild("Buttons"):WaitForChild(osbuto[i].Name)
                                if(#Obodao:GetChildren()>1)then
                                    print(Obodao.Name)
                                    local pressiona = Obodao.Presser
                                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,pressiona,0)
                                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,pressiona,1)
                                end
                                if(osbuto[i].Name == "Rebirth")then
                                    Rebirtouuu()
                                end
                            end
                        end
                    end
                end
            end
        end
    end)

    function MudaVelocidade(q)
        if(q==1)then game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16 end
        if(q==2)then game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 30 end
        if(q==3)then game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 60 end
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16*q
    end
    SliderSpeed = Inicio:Slider{
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
    KillUIButton = Inicio:Button{
        Name = "Fechar UI",
        callback = function()
            config.feed=false
            KillMe()
        end
    }
    DexButton = Inicio:Button{
        Name = "Dex",
        callback = function()
            loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Dex%20Explorer.txt"))()
        end
    }
end

function PegaPlot()
    local osplot = game.Workspace.Plots:GetChildren()
    for i=1,#osplot do
        local vesieh = osplot[i]:GetChildren()
        for j=1,#vesieh do
            if (vesieh[j].Name=="Plot") then
                local oiugatu = vesieh[j].Cat_Functions.PlayTime.Root.SurfaceGui.Amount.Text
                print(oiugatu)
                if not(oiugatu=="C/:") then
                    config.meuplot = osplot[i].Plot
                    local cassachao = config.meuplot.Decor:WaitForChild("Andar 1"):GetChildren()[2]:GetChildren()
                    for k=1,#cassachao do
                        if(cassachao[k].CFrame.y<8.20000 and cassachao[k].CFrame.y>8.19998)then
                            config.meuchao = cassachao[k]
                        end
                    end
                    if not(pair == nil) then
                        pair:Hide()     
                    end
                    game.Players.LocalPlayer.PlayerGui.MainHud.Boards:WaitForChild("Insert Food").Price.Text = "$0"
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,game.Workspace.Obby.ObbyFinish,0)
                    MontaOResto()
                end
            end
        end
    end
end

function Rebirtouuu()
    config.rebirtano = true
    if not(reb==nil) then
        reb:Hide()
        reb = nil
    end
    SliderSpeed:Hide()
    FeedToggle:Hide()
    KillUIButton:Hide()
    DexButton:Hide()
    PegaPlot()
end
