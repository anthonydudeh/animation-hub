-- Shared Remote Events/Functions
-- This module creates all remote communication objects

local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Remotes = {}

-- Create folder for remotes
local folder = Instance.new("Folder")
folder.Name = "AnimationHubRemotes"
folder.Parent = ReplicatedStorage

-- Create remote events
Remotes.EquipAnimationPack = Instance.new("RemoteEvent")
Remotes.EquipAnimationPack.Name = "EquipAnimationPack"
Remotes.EquipAnimationPack.Parent = folder

Remotes.RequestAnimation = Instance.new("RemoteEvent")
Remotes.RequestAnimation.Name = "RequestAnimation"
Remotes.RequestAnimation.Parent = folder

Remotes.GetAnimationPacks = Instance.new("RemoteEvent")
Remotes.GetAnimationPacks.Name = "GetAnimationPacks"
Remotes.GetAnimationPacks.Parent = folder

Remotes.AnimationStateChanged = Instance.new("RemoteEvent")
Remotes.AnimationStateChanged.Name = "AnimationStateChanged"
Remotes.AnimationStateChanged.Parent = folder

return Remotes
