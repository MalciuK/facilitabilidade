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
    feed = false,
    antiafk=0
}

local Uai = loadstring(game:HttpGet('https://raw.githubusercontent.com/MalciuK/facilitabilidade/main/newuai.lua'))()
local Window = Uai.CriarJanelaBase("Super Hack do Niquistiniquis",250,500,Color3.new(0.078431, 0.078431, 0.188235))
local Janela = Uai.CriarJanelaFunc(Window,"Cat Feeding Tycoon")
local Togg = Uai.CriarTogg(Janela,"Auto Feed Gatin",function (a) config.feed = a end)
local Butt = Uai.CriarButt(Janela,"Fechar Janela",function() Window.Parent:Destroy() config.feed = a end)

game:GetService("RunService").RenderStepped:Connect(function()
    -- game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = config.feed
    if(config.feed)then
        if(config.meuplot.Parent==nil)then Rebirtouuu() end
        if(#config.meuplot.Buttons:WaitForChild("Free Food"):GetChildren()==3)then
            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,config.meuplot.Buttons:WaitForChild("Free Food").Presser,0)
            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,config.meuplot.Buttons:WaitForChild("Free Food").Presser,1)
        end
        local Fuuds = config.meuplot.Int_Pickups:GetChildren()
        if(#Fuuds>0 or config.entregou)then
            local concerta = CFrame.new(Vector3.new(config.meuchao.CFrame.x,config.meuchao.CFrame.y+3,config.meuchao.CFrame.z))
            -- if(config.modpos==3)then config.modpos=3.1 else config.modpos=3 end
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
                                config.antiafk +=1
                                if(config.antiafk == 5) then 
                                    config.antiafk = 0
                                    input.press(Enum.KeyCode.Space)
                                    -- local concerta = CFrame.new(Vector3.new(config.meuchao.CFrame.x,config.meuchao.CFrame.y+90,config.meuchao.CFrame.z))
                                    -- game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = concerta
                                end
                            end
                            local Obodao = config.meuplot:WaitForChild("Buttons"):WaitForChild(osbuto[i].Name)
                            if(#Obodao:GetChildren()>1)then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
                                print(Obodao.Name)
                                local pressiona = Obodao.Presser
                                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,pressiona,0)
                                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,pressiona,1)
                            end
                            if(osbuto[i].Name == "Rebirth")then
                                print("Rebirtou")
                                config.entregou = false
                                -- firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,game.Workspace.Obby.ObbyFinish,0)
                                -- -- Rebirtouuu()
                            end
                        end
                    end
                end
            end
        end
    end
end)

function PegaPlot()
    local osplot = game.Workspace.Plots:GetChildren()
    for i=1,#osplot do
        local vesieh = osplot[i]:GetChildren()
        for j=1,#vesieh do
            if (vesieh[j].Name=="Plot") then
                local oiugatu = vesieh[j].Cat_Functions.PlayTime.Root.SurfaceGui.Amount.Text
                if not(oiugatu=="C/:") then
                    config.meuplot = osplot[i].Plot
                    local cassachao = config.meuplot.Decor:WaitForChild("Andar 1"):GetChildren()[2]:GetChildren()
                    for k=1,#cassachao do
                        if(cassachao[k].CFrame.y<8.20000 and cassachao[k].CFrame.y>8.19998)then
                            config.meuchao = cassachao[k]
                        end
                    end
                    game.Players.LocalPlayer.PlayerGui.MainHud.Boards:WaitForChild("Insert Food").Price.Text = "$0"
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,game.Workspace.Obby.ObbyFinish,0)
                end
            end
        end
    end
end
PegaPlot()
function Rebirtouuu()
    config.rebirtano = true
    PegaPlot()
end
