-- TerrainScript.server.lua

local function createTerrain()
    -- Create a new terrain
    local terrain = Instance.new("Terrain")
    
    -- Set the terrain size
    terrain.Size = Vector3.new(1000, 100, 1000)
    
    -- Set the terrain material
    terrain.Material = Enum.Material.Grass
    
    -- Set the terrain color
    terrain.Color = Color3.new(0.2, 0.8, 0.2)
    
    -- Parent the terrain to the workspace
    terrain.Parent = workspace
end

-- Call the function to create the terrain
createTerrain()