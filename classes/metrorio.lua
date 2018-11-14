require("class")

local permissions = {}
permissions.built_elevator = 1
permissions.built_railway = 2
permissions.built_train_stop = 3
permissions.built_rail_signal = 4
permissions.destroy_elevator = 5
permissions.destroy_train_stop = 6
permissions.destroy_railway = 7
permissions.destroy_rail_signal = 8
permissions.use_elevator = 9

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

Metrorio = class(function(self, name)
    self.name = name
    self.mainSufrace = nil
end)

function Metrorio:__tostring()
    return self.name..': '..self.speak()
end

function Metrorio:setMainSurface(surface)
    self.mainSurface = surface
end

function Metrorio:initSurface()
    if global.surface == nil then
        local surface = game.surfaces[self.name]
        if surface == nil then
            if #(game.surfaces) < 256 then
                surface = game.create_surface(self.name, {width = 2, height = 2, water = "none"})
                surface.daytime = 0.0
                surface.freeze_daytime = true
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

function Metrorio:generateChunk(position)
    if self:isChunk(position) == false then
        global.surface.set_chunk_generated_status(position, defines.chunk_generated_status.entities)
    end
end

function Metrorio:isChunk(position)
    return global.surface.is_chunk_generated(position)
end

function Metrorio:rules()
    local rules = {}
    rules["elevator-to-underground"] = {surface = self.mainSurface}
end

function Metrorio:createUnderGroundEntity(player, entity)

end

function Metrorio:createEntity(entity)
    if entity ~= nil then
        local surface = entity.surface
        if surface.name ~= self.name and surface.name == "nauvis" then

        end
    end
end



-- Event Handlers

function Metrorio:onBuiltEntity(event)
    local player = game.players[event.player_index]
    local entity = event.created_entity
    if entity.surface.name == "nauvis" then
        if entity.name == "metro-elevator" or
           entity.name == "metro-transport-container" or
           entity.name == "metro-transport-storage-tank"
        then
            self:createUnderGroundEntity(player, entity)
        end
    end
end