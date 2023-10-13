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

function MontaOResto()
    Inicio:Toggle{
        Name="Auto Feed Gatin",
        flag="autofeed",
        callback=function(q)
            config.feed = q
        end
    }

    game:GetService("RunService").RenderStepped:Connect(function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = config.feed
        if(config.feed)then
            -- game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
            local Fuuds = config.meuplot.Int_Pickups:GetChildren()
            if(#Fuuds>0)then
                for i=1,#Fuuds do
                    if(#Fuuds[1]:GetChildren()>0) then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Fuuds[1]:GetChildren()[1]:GetChildren()[#Fuuds[1]:GetChildren()[1]:GetChildren()].CFrame
                    end
                end
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

                function ArrumaValores(buto1, buto2)
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

                table.sort(osbuto, ArrumaValores)

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

                            if(meumanevalornum>=valornum or osbuto[i].Name == "asd")then
                                print("Comprando:",osbuto[i])
                                local Obodao = config.meuplot:WaitForChild("Buttons"):WaitForChild(osbuto[i].Name)
                                if(#Obodao:GetChildren()>1)then
                                    print(Obodao.Name)
                                    local pressiona = Obodao.Presser
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pressiona.CFrame
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
            config.feed=false
            KillMe()
        end
    }
    Inicio:Button{
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
                    pair:Hide()
                    MontaOResto()
                end
            end
        end
    end
end
