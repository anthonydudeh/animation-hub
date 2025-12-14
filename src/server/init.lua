-- Animation Hub Server Entry Point
-- This initializes all server-side components

local ServerScriptService = game:GetService("ServerScriptService")
local AnimationHubFolder = ServerScriptService:WaitForChild("AnimationHub")

-- Load modules
local AnimationHubService = require(AnimationHubFolder:WaitForChild("AnimationHubService"))
local AntiCheat = require(AnimationHubFolder:WaitForChild("AntiCheat"))

-- Initialize services
print("[AnimationHub] Initializing server...")

-- Start Anti-Cheat monitoring
AntiCheat:StartMonitoring()

-- Start Animation Hub service
AnimationHubService:Init()

print("[AnimationHub] Server initialization complete!")
