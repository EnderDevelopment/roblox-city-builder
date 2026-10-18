-- PlayerInteractionScript.server.lua

local Players = game:GetService("Players")

local function onPlayerAdded(player)
    -- Create a character for the player
    local character = Instance.new("Model")
    character.Name = player.Name
    character.Parent = workspace
    
    -- Set the player's character
    player.Character = character
end

-- Connect the player added event
Players.PlayerAdded:Connect(onPlayerAdded)