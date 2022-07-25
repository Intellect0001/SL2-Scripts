-- ride = skid + he acts like hes on smoke when he gets mummy to tuck him into bed.

for i, v in pairs(game.Players:GetChildren()) do
            if (string.sub(string.lower(v.Name), 1, string.len(text))) == string.lower(text) then
                text = v.Name
            end
        end
      local plr = game:GetService("Players").LocalPlayer
            local char = plr.Character
            local p1 = game.Players.LocalPlayer.Character.HumanoidRootPart
            local p2 = text
            local pos = p1.CFrame --variables


    
            local findCar = function()

            local plr = game:GetService("Players").LocalPlayer
            local pos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
            local roundedPos = math.round(pos.X) .. ", " .. math.round(pos.Y) .. ", " .. math.round(pos.Z)
            
            workspace[game.Players.LocalPlayer.Name .. "'s Car"]:MoveTo(roundedPos)
            task.wait()
            workspace[game.Players.LocalPlayer.Name .. "'s Car"].DriveSeat:Sit(plr.Character.Humanoid)
            
            task.wait(.8)
            if game.Players.LocalPlayer.Character.Humanoid.Sit ~= true then
            workspace[game.Players.LocalPlayer.Name .. "'s Car"]:MoveTo(roundedPos)
            task.wait()
            workspace[game.Players.LocalPlayer.Name .. "'s Car"].DriveSeat:Sit(plr.Character.Humanoid)
            end
            end
            
            findCar() --bring vehicle + bike
            wait(0.5)
            local args = {
                [1] = "HOP",
                [2] = workspace:FindFirstChild(game.Players.LocalPlayer.Name .. "'s Car")
            }
            game:GetService("ReplicatedStorage").DoorService:FireServer(unpack(args)) --get off bike

            task.wait(0.3)
                    p1.CFrame = game.Players[p2].Character.HumanoidRootPart.CFrame
                    
            if not game.Players.LocalPlayer.Character:FindFirstChild("Fist") then
            game.Players.LocalPlayer.Backpack.Fist.Parent = game.Players.LocalPlayer.Character
            end

            local alive = true
            local person = text
            local kid = game.Players.LocalPlayer.Character
            local pedo = game.Players[person].Character
            local start = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            task.wait()

            local daddy1 = game.Players[person].Character.Humanoid
            local ohNil2 = nil
            local niggas3 = 1
            local daddy4 = game.Players[person].Character.Head
            local ohbaby5 = true
            local ohvector = Vector3.new()
            local ohbaby7 = false
            while alive do
                task.wait(0.05)
            game.Players.LocalPlayer.Character.Fist.LocalScript.Script.e:FireServer(daddy1, ohNil2, niggas3, daddy4, ohbaby5, ohvector, ohbaby7)
            kid.HumanoidRootPart.CFrame = pedo.HumanoidRootPart.CFrame

            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
            if game.Players[person].Character.Humanoid.Health <= 25 or alive == false then
            local args = {
                [1] = game:GetService("Players")[person]
            }
            game:GetService("ReplicatedStorage").CarryingServer:FireServer(unpack(args))

            repeat
            task.wait(0.2)
                        local findCar = function()

                        local plr = game:GetService("Players").LocalPlayer
                        local pos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                        local roundedPos = math.round(pos.X) .. ", " .. math.round(pos.Y) .. ", " .. math.round(pos.Z)
                        
                        workspace[game.Players.LocalPlayer.Name .. "'s Car"]:MoveTo(roundedPos)
                        task.wait()
                        workspace[game.Players.LocalPlayer.Name .. "'s Car"].DriveSeat:Sit(plr.Character.Humanoid)
                        
                        task.wait(.8)
                        if game.Players.LocalPlayer.Character.Humanoid.Sit ~= true then
                        workspace[game.Players.LocalPlayer.Name .. "'s Car"]:MoveTo(roundedPos)
                        task.wait()
                        workspace[game.Players.LocalPlayer.Name .. "'s Car"].DriveSeat:Sit(plr.Character.Humanoid)
                        end
                        end
                        
                        findCar() --bring vehicle + bike
                        wait(0.5)
            local args = {
                [1] = "HOP",
                [2] = workspace:FindFirstChild(game.Players.LocalPlayer.Name .. "'s Car")
            }
            game:GetService("ReplicatedStorage").DoorService:FireServer(unpack(args)) --get off bike
                        wait(0.3)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-645.46405, 4.59038591, 426.47641, 0.29127121, 5.44946879e-08, -0.956640542, -7.29808676e-08, 1, 3.47439446e-08, 0.956640542, 5.96965464e-08, 0.29127121)
            task.wait(1)
            game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = start
            task.wait(1)
            game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = start
            task.wait(1)
            until not game.Players:FindFirstChild(person)
            end
            end
