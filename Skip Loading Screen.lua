local LP = game:GetService("Players").LocalPlayer
local workspace = game.Workspace
if game.Players.LocalPlayer.PlayerGui:FindFirstChild("Agreement") then
    LP.PlayerGui.Agreement:Destroy()
end
if game.Players.LocalPlayer.PlayerGui:FindFirstChild("Menu") then
    LP:WaitForChild("PlayerGui").Menu:Destroy()
end
LP.PlayerGui.twitter.Enabled = true
LP.PlayerGui.Stats.Enabled = true
workspace.CurrentCamera.CameraType = "Custom"
local char = LP.Character or LP.CharacterAdded:Wait()
workspace.CurrentCamera.CameraSubject = char:WaitForChild("Humanoid")
