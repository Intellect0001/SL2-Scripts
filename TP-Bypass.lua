local LP = game.Players.LocalPlayer
local workspace = game.Workspace
LP.Character.HumanoidRootPart.CFrame = CFrame.new(CFRAME GOES HERE)
game:GetService("Workspace")[LP.Name.."'s Car"]:MoveTo(LP.Character.HumanoidRootPart.Position)
task.wait()
game:GetService("Workspace")[LP.Name.."'s Car"].DriveSeat:sit(LP.Character.Humanoid)
task.wait()
game:GetService("ReplicatedStorage").DoorService:FireServer("HOP",workspace:FindFirstChild(LP.Name .. "'s Car"))
