-- Old AntiCheat Bypass

function BypassAntiCheat()
    game:GetService("RunService").RenderStepped:Connect(function()
        pcall(function()
            if game.Players.LocalPlayer.Character:FindFirstChild("Script") then
                game.Players.LocalPlayer.Character:FindFirstChild("Script"):Destroy();
            end
        end) pcall(function()
            if game.Players.LocalPlayer.Character:FindFirstChild("lolxd6") then
                game.Players.LocalPlayer.Character:FindFirstChild("lolxd6"):Destroy();
            end
        end) pcall(function()
            if game.Players.LocalPlayer.Character:FindFirstChild("lolxd555") then
                game.Players.LocalPlayer.Character:FindFirstChild("lolxd555"):Destroy();
            end
        end) pcall(function()
            if game.ReplicatedStorage:FindFirstChild("XDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD") then
                game.ReplicatedStorage:FindFirstChild("XDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD"):Destroy();
            end
        end)
    end)
end

BypassAntiCheat();

local NeededPart = nil
local PartCFrame = CFrame.new(-23.6783867, 40.0809975, 92.7621765, 1, 0, 0, 0, 1, 0, 0, 0, 1)

for i,v in pairs(game.Workspace:GetChildren()) do
    if v:IsA("Part") then
        if v.CFrame == PartCFrame then
            NeededPart = v
        end
    end
end

NeededPart:Destroy()
