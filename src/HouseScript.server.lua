-- HouseScript.server.lua

local function createHouse(position)
    -- Create a new part for the house
    local house = Instance.new("Part")
    
    -- Set the house properties
    house.Size = Vector3.new(10, 10, 10)
    house.Position = position
    house.Anchored = true
    house.BrickColor = BrickColor.new("Bright blue")
    
    -- Parent the house to the workspace
    house.Parent = workspace
end

-- Call the function to create a house at a specific position
createHouse(Vector3.new(0, 5, 0))