local Workspace = game:GetService("Workspace")
local input = loadstring(game:HttpGet('https://pastebin.com/raw/dYzQv3d8'))()
local config = {
    vai = false,
    trava = false,
    trava2 = false,
}
local Uai = loadstring(game:HttpGet('https://raw.githubusercontent.com/MalciuK/facilitabilidade/main/newuai.lua'))()
local Window = Uai.CriarJanelaBase("Super Hack do Niquistiniquis",250,500,Color3.new(0.078431, 0.078431, 0.188235))
local Janela = Uai.CriarJanelaFunc(Window,"BreideBalljkkjjjjkkkkk")
local Togg = Uai.CriarTogg(Janela,"AutoParrylixo",function (a) config.vai = a end)
local Butt = Uai.CriarButt(Janela,"Fechar Janela",function() Window.Parent:Destroy() config.vai = a end)
local slamano = {}

game.Workspace.Balls.ChildAdded:Connect(function()
    config.trava = false
    config.trava2 = false
    slamano = {}
    local oscoiso = game.Workspace.Balls:GetChildren()
    for i=1,#oscoiso do
        local oscoiso2 = oscoiso[i]:GetChildren()
        for j=1,#oscoiso2 do
            if(oscoiso2[j].ClassName=="LinearVelocity") then
                table.insert(slamano,oscoiso2[j])
                break
            end
        end
        if(#slamano>0)then
            break
        end
    end
end)
local contasaporra = 0
game:GetService("RunService").RenderStepped:Connect(function()
    if(config.vai)then
        local vetorial = true
        if(vetorial)then
            local aboladacor = game.Workspace.Balls:GetChildren()[2]
            if not(aboladacor==nil)then
                if(aboladacor.Color.r == 1)then
                    local ondeeuto = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                    local ondeelata = slamano[1].Parent.Position
                    local distanciaminima = 10
                    local velocidade = slamano[1].VectorVelocity/2
                    local ondeeuto = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                    local ondeelata = slamano[1].Parent.Position
                    local pontofuturo = ondeelata+velocidade
                    local disttrue = 0
    
                    local anguloentreeubolaepotofuturofds = (((ondeelata-ondeeuto)*(pontofuturo-ondeeuto)).X+((ondeelata-ondeeuto)*(pontofuturo-ondeeuto)).Y+((ondeelata-ondeeuto)*(pontofuturo-ondeeuto)).Z)/((ondeelata-ondeeuto).Magnitude*(pontofuturo-ondeeuto).Magnitude)
                    if(anguloentreeubolaepotofuturofds<=0)then --ANGULO ENTRE O VETOR
                        --Equação fudida:
                        local vetorbolapotofuturo = velocidade
                        local vetorbolaeu = ondeeuto-ondeelata
                        --areadessaporra é o modulo da multiplicação vetorial... demonio...
                        local tedois = vetorbolaeu
                        local teum = vetorbolapotofuturo
                        local areadessasporra = Vector3.new((teum.Y*tedois.Z)-(tedois.Y*teum.Z),(teum.Z*tedois.X)-(tedois.Z*teum.X),(teum.X*tedois.Y)-(tedois.X*teum.Y)).Magnitude
                        local distanciadalinhadopercussodabola=areadessasporra/vetorbolapotofuturo.magnitude
                        disttrue = distanciadalinhadopercussodabola
                    else
                        local distanciafutura = (ondeeuto-pontofuturo).magnitude
                        disttrue = distanciafutura
                    end
    
                    if(disttrue<=distanciaminima and config.trava2 == false)then
                        config.trava2 = true
                        input.press(Enum.KeyCode.F)
                    end
                else
                    config.trava2 = false
                    config.trava = false
                end
            end
        end
    end

end)


-- OOOOLD FODASSEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
-- local Workspace = game:GetService("Workspace")
-- local input = loadstring(game:HttpGet('https://pastebin.com/raw/dYzQv3d8'))()
-- local config = {
--     vai = false,
--     trava = false,
--     trava2 = false,
--     alaiv = true
-- }
-- local Uai = loadstring(game:HttpGet('https://raw.githubusercontent.com/MalciuK/facilitabilidade/main/newuai.lua'))()
-- local Window = Uai.CriarJanelaBase("Super Hack do Niquistiniquis",250,500,Color3.new(0.078431, 0.078431, 0.188235))
-- local Janela = Uai.CriarJanelaFunc(Window,"BreideBalljkkjjjjkkkkk")
-- local Togg = Uai.CriarTogg(Janela,"AutoParrykkkk",function (a) config.vai = a end)
-- local Butt = Uai.CriarButt(Janela,"Fechar Janela",function() Window.Parent:Destroy() config.vai = a end)
-- local slamano = {}

-- game.Workspace.Balls.ChildAdded:Connect(function()
--     config.trava = false
--     config.trava2 = false
--     slamano = {}
--     local oscoiso = game.Workspace.Balls:GetChildren()
--     for i=1,#oscoiso do
--         local oscoiso2 = oscoiso[i]:GetChildren()
--         for j=1,#oscoiso2 do
--             if(oscoiso2[j].ClassName=="LinearVelocity") then
--                 table.insert(slamano,oscoiso2[j])
--                 break
--             end
--         end
--         if(#slamano>0)then
--             break
--         end
--     end
-- end)
-- local contasaporra = 0
-- game:GetService("RunService").RenderStepped:Connect(function()
--     if(config.vai)then
--         local vetorial = true
--         if(vetorial)then
--             if(game.Workspace.Balls:GetChildren()[2].Color.r == 1)then
--                 local ondeeuto = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
--                 local ondeelata = slamano[1].Parent.Position
--                 local distanciaminima = 30
--                 if((ondeeuto-ondeelata).magnitude<=distanciaminima and config.trava == false)then
--                     Butt.Text = "VUSETAAA"..contasaporra
--                     contasaporra+=1
--                     input.press(Enum.KeyCode.F)
--                 else
--                     config.trava = true
--                     local velocidade = slamano[1].VectorVelocity/2
--                     local ondeeuto = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
--                     local ondeelata = slamano[1].Parent.Position
--                     local pontofuturo = ondeelata+velocidade
--                     local disttrue = 0

--                     local anguloentreeubolaepotofuturofds = (((ondeelata-ondeeuto)*(pontofuturo-ondeeuto)).X+((ondeelata-ondeeuto)*(pontofuturo-ondeeuto)).Y+((ondeelata-ondeeuto)*(pontofuturo-ondeeuto)).Z)/((ondeelata-ondeeuto).Magnitude*(pontofuturo-ondeeuto).Magnitude)
--                     if(anguloentreeubolaepotofuturofds<=0)then --ANGULO ENTRE O VETOR
--                         --Equação fudida:
--                         local vetorbolapotofuturo = velocidade
--                         local vetorbolaeu = ondeeuto-ondeelata
--                         --areadessaporra é o modulo da multiplicação vetorial... demonio...
--                         local tedois = vetorbolaeu
--                         local teum = vetorbolapotofuturo
--                         local areadessasporra = Vector3.new((teum.Y*tedois.Z)-(tedois.Y*teum.Z),(teum.Z*tedois.X)-(tedois.Z*teum.X),(teum.X*tedois.Y)-(tedois.X*teum.Y)).Magnitude
--                         local distanciadalinhadopercussodabola=areadessasporra/vetorbolapotofuturo.magnitude
--                         disttrue = distanciadalinhadopercussodabola
--                     else
--                         local distanciafutura = (ondeeuto-pontofuturo).magnitude
--                         disttrue = distanciafutura
--                     end

--                     if(disttrue<=distanciaminima and config.trava2 == false)then
--                         config.trava2 = true
--                         input.press(Enum.KeyCode.F)
--                     end
--                 end
--             else
--                 config.trava2 = false
--                 config.trava = false
--             end
--         end
--     end

-- end)


-- -- local velocidade = slamano[1][2].VectorVelocity.magnitude
-- -- local distancia = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-slamano[1][2].Parent.Position).magnitude
-- -- slamano[1][1].Text = string.format("Velocidade: %.5f", velocidade)
-- -- Butt.Text = string.format("Distancia: %.5f", distancia)
-- -- if(game.Workspace.Balls:GetChildren()[2].Color.r == 1)then
-- --     Butt.Text = "VOCE"
-- --     local distanciaminima = -15
-- --     if(distancia-velocidade<=distanciaminima)then
-- --         input.press(Enum.KeyCode.F)
-- --     end
-- -- end

-- -- game.Workspace.Especulaador.CFrame = CFrame.new(pontofuturo)
-- -- game.Workspace.Especulaador:GetChildren()[1].CFrame = CFrame.new(ondeeuto-Vector3.new(0,3,0))
-- -- game.Workspace.Especulaador:GetChildren()[1].Size = Vector3.new(disttrue*2,1,disttrue*2)

-- -- local Especulador = Instance.new("Part")
-- -- Especulador.Name = "Especulaador"
-- -- Especulador.Size = Vector3.new(1.5,1.5,1.5)
-- -- Especulador.Anchored = true
-- -- Especulador.CanCollide = false
-- -- Especulador.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
-- -- Especulador.Color = Color3.new(0.274509, 1, 0.309803)
-- -- Especulador.Parent = game.Workspace
-- -- local Especulador2 = Instance.new("Part")
-- -- Especulador2.Name = "EspeculaadorCirindro"
-- -- Especulador2.Size = Vector3.new(1,1,1)
-- -- Especulador2.Anchored = true
-- -- Especulador2.CanCollide = false
-- -- Especulador2.CFrame = Especulador.CFrame
-- -- Especulador2.Color = Color3.new(1, 0.929411, 0.274509)
-- -- Especulador2.Transparency = 0.7
-- -- Especulador2.Parent = Especulador
-- -- local mesh = Instance.new("CylinderMesh")
-- -- mesh.Parent = Especulador2
-- -- mesh.Scale = Vector3.new(1, 1, 1)
-- -- mesh.Offset = Vector3.new(0, 0, 0)

-- -- local tedois = Vector3.new(-1,-2,-1)
-- -- local teum = Vector3.new(1,-5,-7)
-- -- local amult = Vector3.new((teum.Y*tedois.Z)-(tedois.Y*teum.Z),(teum.Z*tedois.X)-(tedois.Z*teum.X),(teum.X*tedois.Y)-(tedois.X*teum.Y))

-- -- A(opq) B(rst) C(uvw) X(xyz) P=C
-- -- 1) d²= |AC|²-|AX|²
-- -- 2) d²= |BC|²-|BX|²
-- -- 3) |CX|= AreaABC/|AB|

-- -- 1) e 2):
-- -- |AC|²-|(x-o,y-p,z-q)|² = |BC|² - |(x-r,y-s,z-t)|²
-- -- |AC|²-|BC|² = |(x-o,y-p,z-q)|²-|(x-r,y-s,z-t)|²
-- --    ///////  = r((x-o)²+(y-p)²+(z-q)²)² - r((x-r)²+(y-s)²+(z-t)²)²
-- -- |AC|²^2-|BC|²^2 = (x-o)²+(y-p)²+(z-q)² -(x-r)²-(y-s)²-(z-t)²
-- --    ///////  = x²-2xo+o²+y²-2yp+p²+z²-2zq+q² -x²+2xr-r²-y²+2ys-s²-z²+2zt-t²
-- -- (|AC|²^2)-(|BC|²^2)+o²+p²+q² -r²-s²-t² = -2ox+2rx -2py+2sy -2qz+2tz
-- -- (|AC|²^2)-(|BC|²^2)+o²+p²+q² -r²-s²-t² = +x(-2o+2r) +y(-2p+2s) +z(-2q+2t)
-- -- (|AC|²^2)-(|BC|²^2)+o²+p²+q² -r²-s²-t² -y(-2p+2s) -z(-2q+2t) = +x(-2o+2r)
-- -- ((|AC|²^2)-(|BC|²^2)+o²+p²+q² -r²-s²-t² -y(-2p+2s) -z(-2q+2t))/(-2o+2r) = x

-- -- 1)2) e 3):
-- -- |CX| = |ProdutoVetorial(|AB|,|AC|)|/|AB|
-- -- r((x-u)²+(y-v)²+(z-w)²) = |ProdutoVetorial(|AB|,|AC|)|/|AB|
-- -- (x-u)²+(y-v)²+(z-w)² = (|ProdutoVetorial(|AB|,|AC|)|/|AB|)²
-- -- x²-2xu+u²+y²-2yv+v²+z²-2zw+w² = (|ProdutoVetorial(|AB|,|AC|)|/|AB|)²
-- -- ((|AC|²^2)-(|BC|²^2)+o²+p²+q² -r²-s²-t² -y(-2p+2s) -z(-2q+2t))/(-2o+2r)²-2((|AC|²^2)-(|BC|²^2)+o²+p²+q² -r²-s²-t² -y(-2p+2s) -z(-2q+2t))/(-2o+2r)u+u²+y²-2yv+v²+z²-2zw+w² = (|ProdutoVetorial(|AB|,|AC|)|/|AB|)²

-- -- local Uai = loadstring(game:HttpGet('https://raw.githubusercontent.com/MalciuK/facilitabilidade/main/newuai.lua'))()
-- -- local Window = Uai.CriarJanelaBase("Super Hack do Niquistiniquis",250,500,Color3.new(0.078431, 0.078431, 0.188235))
-- -- local Janela = Uai.CriarJanelaFunc(Window,"BucetaBallkkkk")
-- -- local Togg = Uai.CriarTogg(Janela,"tentaai",function (a) config.vai = a end)
-- -- local prr1 = Vector3.new(1,1,1)
-- -- local prr2 = Vector3.new(-2,3,1)
-- -- local prr3 = Vector3.new(-2,1,1)
-- -- local angulodessesporra = (((prr2-prr1)*(prr3-prr1)).X+((prr2-prr1)*(prr3-prr1)).Y+((prr2-prr1)*(prr3-prr1)).Z)/((prr2-prr1).Magnitude*(prr3-prr1).Magnitude)
-- -- local Butt = Uai.CriarButt(Janela,tostring(angulodessesporra),function() Window.Parent:Destroy() config.vai = a end)


-- -- local Uai = loadstring(game:HttpGet('https://raw.githubusercontent.com/MalciuK/facilitabilidade/main/newuai.lua'))()
-- -- local Window = Uai.CriarJanelaBase("Super Hack do Niquistiniquis",250,500,Color3.new(0.078431, 0.078431, 0.188235))
-- -- local Janela = Uai.CriarJanelaFunc(Window,"BreideBalljkkjjjjkkkkk")
-- -- local Butt = Uai.CriarButt(Janela,"Fechar Janela",function() Window.Parent:Destroy() config.vai = a end)

-- -- local estodar = {}
-- -- game.Workspace.Balls.ChildAdded:Connect(function()
-- --     for i=1,#estodar do
-- --         estodar[i][1]:Destroy()
-- --     end
-- --     estodar = {}
-- --     local oscoiso = game.Workspace.Balls:GetChildren()
-- --     for j=1,#oscoiso do
-- --         local oscoiso2 = oscoiso[j]:GetChildren()
-- --         for i=1,#oscoiso2 do
-- --             if(oscoiso2[i].ClassName=="VectorForce") then
-- --                 local asdasd = Uai.CriarButt(Janela,oscoiso2[i].Name,function() Window.Parent:Destroy() config.vai = a end)
-- --                 table.insert(estodar,{asdasd,oscoiso2[i]})
-- --             end
-- --         end
-- --     end
-- -- end)


-- -- game:GetService("RunService").RenderStepped:Connect(function()
-- --     for i=1,#estodar do
-- --         estodar[i][1].Text = string.format(estodar[i][2].Name..": "..#estodar[i][2]:GetChildren())
-- --     end
-- -- end)

-- -- local Especulador2 = Instance.new("Part")
-- -- Especulador2.Name = "EspeculaadorCirindro"
-- -- Especulador2.Size = Vector3.new(60,1,60)
-- -- Especulador2.Anchored = true
-- -- Especulador2.CanCollide = false
-- -- Especulador2.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(0,3,0))
-- -- Especulador2.Color = Color3.new(1, 0.929411, 0.274509)
-- -- Especulador2.Transparency = 0.7
-- -- Especulador2.Parent = Workspace
-- -- local mesh = Instance.new("CylinderMesh")
-- -- mesh.Parent = Especulador2
-- -- mesh.Scale = Vector3.new(1, 1, 1)
-- -- mesh.Offset = Vector3.new(0, 0, 0)
