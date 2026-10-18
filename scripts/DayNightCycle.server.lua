-- DayNightCycle.server.lua

local Lighting = game:GetService("Lighting")

local function updateSky()
    local hour = os.date("*t").hour
    local minute = os.date("*t").min
    local timeOfDay = hour + minute / 60

    -- Calculate color based on time of day
    local color
    if timeOfDay >= 5 and timeOfDay < 7 then
        -- Dawn
        color = Color3.fromRGB(255, 165, 0)
    elseif timeOfDay >= 7 and timeOfDay < 19 then
        -- Day
        color = Color3.fromRGB(135, 206, 235)
    elseif timeOfDay >= 19 and timeOfDay < 21 then
        -- Dusk
        color = Color3.fromRGB(255, 69, 0)
    else
        -- Night
        color = Color3.fromRGB(0, 0, 128)
    end

    -- Update lighting
    Lighting.ClockTime = timeOfDay
    Lighting.Ambient = color
    Lighting.OutdoorAmbient = color
end

-- Update sky every minute
while true do
    updateSky()
    wait(60)
end
