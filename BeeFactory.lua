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
    afkdelay = 1000
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
    end
}


game:GetService("RunService").RenderStepped:Connect(function()
    if(config.afkdelay>0)then
        config.afkdelay -= 1
    else
        config.afkdelay = 1000
        input.press(Enum.KeyCode.Space)
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
            print("Comprei Abeia!")
            local UbutoPaPagah = game.Workspace.Tycoons:WaitForChild(game.Players.LocalPlayer.Name).Buttons.Purchase_Bee
            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,UbutoPaPagah,0)
            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,UbutoPaPagah,1)
        end
    end
    if(config.maitaxa)then
        local uprecinstr = game.Workspace.Tycoons:WaitForChild(game.Players.LocalPlayer.Name).BillboardGuis.UpgradeSell.BillboardGui.Cost.Text
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
        print(uprecinnum)

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
            print("Comprei Taxa!")
            local UbutoPaPagah = game.Workspace.Tycoons:WaitForChild(game.Players.LocalPlayer.Name).Buttons.Faster_Button
            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,UbutoPaPagah,0)
            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,UbutoPaPagah,1)
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
        KillMe()
    end
}
