local surfaceName = "metrorio"

local function init()
    if global.surface == nil then
        local surface = game.surfaces[surfaceName]
        if surface == nil then
            if #(game.sufaces) < 256 then
                global.surface = game.create_surface(surfaceName, {width = 2, height = 2})
                global.daytime = 0
                gloabl.freez_daytime = true
            else
                error("Unfortunately you have no available surfaces left for Metrorio. You cannot use Metrorio on this map")
            end
        end
        global.surface = surface
    end
end