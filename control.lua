local inspect = require("inspect")

local events = defines.events

require("classes.metrorio")

local metrorio = Metrorio("underground")

script.on_init(function()
    metrorio:initSurface()
    metrorio:setMainSurface(game.surfaces[1].name)
end)

script.on_configuration_changed(function(data)
    metrorio:initSurface()
    metrorio:setMainSurface(game.surfaces[1].name)
end)

script.on_event(events.on_player_joined_game, function(event)
    game.print(metrorio)
end)

script.on_event(events.on_built_entity, function(event)
    metrorio:onBuiltEntity(event)
end)