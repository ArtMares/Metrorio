local inspect = require("inspect")

require("metro.metrorio")

local metro = Metrorio("underground")

script.on_init(function()
    metro.initSurface()
end)

script.on_configuration_changed(function(data)
    metro.initSurface()
end)

script.on_event(defines.events.on_player_joined_game, function(event)

end)