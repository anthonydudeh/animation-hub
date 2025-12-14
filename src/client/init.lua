-- Animation Hub Client Entry Point
-- This initializes all client-side components

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Wait for remotes to be created
local AnimationHubRemotes = ReplicatedStorage:WaitForChild("AnimationHubRemotes")

-- Load GUI module
local AnimationHubGUI = require(script:WaitForChild("AnimationHubGUI"))

-- Initialize GUI
local gui = AnimationHubGUI.new()

print("[AnimationHub] Client loaded successfully!")

-- Handle player respawn
player.CharacterAdded:Connect(function()
    -- Reinitialize GUI if needed
    if not gui then
        gui = AnimationHubGUI.new()
    end
end)

-- Cleanup on leave
Players.PlayerRemoving:Connect(function(leavingPlayer)
    if leavingPlayer == player and gui then
        gui:Destroy()
        gui = nil
    end
end)
