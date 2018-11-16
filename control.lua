local inspect = require("inspect")

require("util.lib")

if not metrolib then metrolib = {} end
if not metrolib.events then metrolib.events = {} end

metrolib.events.on_player_entered_metro = script.generate_event_name()
metrolib.events.on_player_left_metro = script.generate_event_name()

local events = defines.events

require("classes.metrorio")

local metrorio = Metrorio("underground")

script.on_init(function()
    metrorio:initSurface()
    metrorio:setMainSurface(game.surfaces[1])
end)

script.on_configuration_changed(function(data)
    metrorio:initSurface()
    metrorio:setMainSurface(game.surfaces[1])
end)

script.on_event(events.on_player_joined_game, function(event)
    game.print(metrorio)
end)

script.on_event(events.on_built_entity, function(event)
    metrorio:onBuiltEntity(event)
end)

script.on_event(events.on_tick, function(event)
    if event.tick % 60 == 0 then
    end
end)

script.on_event(events.on_chunk_generated, function(event)
    if event.surface.name ~= metrorio.mainSurface.name then
        local area = event.area
        local s = string.format("area: [ left: [x = %s, y = %s], right: [x = %s, y = %s]]", area.left_top.x, area.left_top.y, area.right_bottom.x, area.right_bottom.y)
        game.print(s)
    end
end)