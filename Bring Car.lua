-- Bring Car

local LP = game:GetService("Players").LocalPlayer
game:GetService("Workspace")[LP.Name.."'s Car"]:MoveTo(LP.Character.HumanoidRootPart.Position)
task.wait()
game:GetService("Workspace")[LP.Name.."'s Car"].DriveSeat:sit(LP.Character.Humanoid)
