local ReplicatedStorage = game:GetService("ReplicatedStorage")
local input = loadstring(game:HttpGet('https://pastebin.com/raw/dYzQv3d8'))()
local Uai = loadstring(game:HttpGet('https://raw.githubusercontent.com/MalciuK/facilitabilidade/main/newuai.lua'))()

local config = {
    working = true,
    render = nil,
    centeragitar = false
}

local Window = Uai.CriarJanelaBase("Super Hack do Niquistiniqs",250,250,Color3.new(0.407843, 0.431372, 0.623529),function() config.working=false config.grudaplayer = "None" end)
local Janela = Uai.CriarJanelaFunc(Window,"PEEXISSS")
local Togg = Uai.CriarTogg(Janela,"AutoSHAAKE",function(a) config.centeragitar=a end)
local Butt = Uai.CriarButt(Janela,"Fechar Janela",function() Window.Parent:Destroy() config.working=false end)

config.render = game:GetService("RunService").RenderStepped:Connect(function()
    if (config.working) then
        if config.centeragitar then
            local size = workspace.CurrentCamera.ViewportSize
            local antiquit = game.Players.LocalPlayer.PlayerGui:FindFirstChild("antiquit")
            if (antiquit==nil)then
                local h = Instance.new("ScreenGui",game.Players.LocalPlayer.PlayerGui)
                h.Name="antiquit"
                local Main = Instance.new("ImageButton",h)
                Main.Size = UDim2.new(0, 50, 0, 50)
                Main.Position = UDim2.new(0, (size.X-50)/2, 0, (size.Y-50-50-50-25)/2)
            end
            local shakeui = game.Players.LocalPlayer.PlayerGui:FindFirstChild("shakeui")
            if not(shakeui==nil)then
                local oagitbotao = shakeui.safezone:FindFirstChild("button")
                if not(oagitbotao==nil)then
                    oagitbotao.Position=UDim2.new(0.5,0,0.5,0)
                    game:GetService('VirtualInputManager'):SendMouseButtonEvent(size.X/2,size.Y/2,0,true,nil,0)
                    game:GetService('VirtualInputManager'):SendMouseButtonEvent(size.X/2,size.Y/2,0,false,nil,0)
                end
            end
        else
            local antiquit = game.Players.LocalPlayer.PlayerGui:FindFirstChild("antiquit")
            if not(antiquit==nil)then
                antiquit:Destroy()
            end
        end
    else
        config.render:Disconnect()
        local antiquit = game.Players.LocalPlayer.PlayerGui:FindFirstChild("antiquit")
        if not(antiquit==nil)then
            antiquit:Destroy()
        end
    end
end)
