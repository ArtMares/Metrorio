local surfaceName = "metrorio"

local function init()
    if global.surface == nil then
        local isset = false
        for _, surface in pairs(game.surfaces) do
            if (surface.name == surfaceName) then
                isset = true
            end
        end
        if isset == false then
            global.surface = game.create_surface(surfaceName, {width = 2, height = 2})
        end
    end
end