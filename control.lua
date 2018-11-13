local inspect = require("inspect")

local surfaceName = "metrorio"

local function copyChanks()
    for chunk in game.surfaces[1].get_chunks() do
        log("x: " .. chunk.x .. ", y: " .. chunk.y)
    end
end

local function init()
    if global.surface == nil then
        local surface = game.surfaces[surfaceName]
        if surface == nil then
            if #(game.surfaces) < 256 then
                global.surface = game.create_surface(surfaceName, {width = 2, height = 2})
                global.daytime = 0
                global.freez_daytime = true
            else
                error("Unfortunately you have no available surfaces left for Metrorio. You cannot use Metrorio on this map")
            end
        end
        global.surface = surface
    end
end

script.on_init(function()
    init()
    copyChanks()
end)

script.on_event(defines.events.on_player_joined_game, function(event)
--    init()
    copyChanks()
    for _, entity in pairs(game.entity_prototypes) do
        if entity.type == "lab" then
            log(inspect.inspect(entity))
        end
    end
end)

--script.on_event(defines.events.on_chunk_generated, function(event)
--    local box = event.area
--    local surface = event.surface
--    game.print(box.left_top.x .. " " .. box.left_top.y .. " -> " .. box.right_bottom.x .. " " .. box.right_bottom.y)
--    game.print(surface.name)
--end)