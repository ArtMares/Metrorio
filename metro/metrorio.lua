require("class")

local floor = math.floor
local ceil = math.ceil

--Metrorio = {}
--Metrorio._index = Metrorio
--
--function Metrorio:init()
--    local _self = {}
--    setmetatable(_self, Metroio)
--    _self.surfaceName = "metrorio"
--    return _self
--end

Metrorio = class(function(obj, name)
    obj.name = name
end)

function Metorio:initSurface()
    if global.surface == nil then
        local surface = game.surfaces[self.name]
        if surface == nil then
            if #(game.surfaces) < 256 then
                surface = game.create_surface(self.name, {width = 2, height = 2, water = "none"})
                surface.daytime = 0.0
                surface.freez_daytime = true
                surface.wind_speed = 0.0
            else
                error("Unfortunately you have no available surfaces left for Metrorio. You cannot use Metrorio on this map")
            end
        end
        global.surface = surface
    end
end

function Metrorio:refreshInputs()

end

function Metorio:generateChunk(position)
    if self.isChunk(position) == false then
        global.surface.set_chunk_generated_status(position, defines.chunk_generated_status.entities)
    end
end

function Metrorio:isChunk(position)
    return global.surface.is_chunk_generated(position)
end

function Metrorio:createEntity(entity)
    if entity ~= nil then
        local surface = entity.surface
        if surface.name ~= self.name and surface.name == "naivus" then

        end
    end
end

-- Event Handlers

function Metrorio:onBuiltEntity(event)

end