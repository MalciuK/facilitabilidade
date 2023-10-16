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
    melzin = false,
    entregar = false,
    upabieia = false,
    maitaxa = false,
    afkdelay = 1000,
    mashupa = false,
    antiafk = false
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

local Tab = Window:Tab("Bee Factoryyyy")
local Inicio = Tab:Section { name = "Inicio"}

Inicio:Toggle{
    Name="Auto Farm",
    flag="asdasd",
    callback=function(oq)
        config.entregar = oq
        config.upabieia = oq
        config.melzin = oq
        config.maitaxa = oq
        config.mashupa = oq
        config.antiafk = oq
    end
}


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

Inicio:Button{
    Name = "Fechar UI",
    callback = function()
        config.melzin = false
        config.entregar = false
        config.upabieia = false
        config.maitaxa = false
        config.mashupa = false
        config.antiafk = false
        KillMe()
    end
}
