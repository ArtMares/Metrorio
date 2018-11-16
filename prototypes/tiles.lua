
local function makeTile(tinfo)
    data:extend(
        {
            type = "tile",
            name = tinfo.name,
            needs_correction = false,
            collision_mask = tinfo.collision_mask,
            layer = tinfo.layer or 50,
            variant = {
                main = tinfo.pictures,
                inner_corner =  {picture = M .. "/graphics/nothing.png", count = 0},
                outer_corner =  {picture = M .. "/graphics/nothing.png", count = 0},
                side =          {picture = M .. "/graphics/nothing.png", count = 0},
                u_transition =  {picture = M .. "/graphics/nothing.png", count = 0},
                o_transition =  {picture = M .. "/graphics/nothing.png", count = 0}
            },
            walking_speed_modifier = 1.0,
            walking_sound = {
                {
                    filename = "__base__/sound/walking/concrete-01.ogg",
                    volume = 1.2
                },
                {
                    filename = "__base__/sound/walking/concrete-02.ogg",
                    volume = 1.2
                },
                {
                    filename = "__base__/sound/walking/concrete-03.ogg",
                    volume = 1.2
                },
                {
                    filename = "__base__/sound/walking/concrete-04.ogg",
                    volume = 1.2
                }
            },
            map_color = tinfo.map_color or {r = 1},
            ageing = 0.0006
        }
    )
end

local function wallMask()
    return {
        "groud-tile",
        "water-tile",
        "resource-layer",
        "floor-layer",
        "item-layer",
        "object-layer",
        "player-layer",
        "doodad-layer"
    }
end

local function edgeMask()
    return {
        "groud-tile",
        "water-tile",
        "resource-layer",
        "floor-layer",
        "item-layer",
        "object-layer",
        "doodad-layer"
    }
end

local function floorMask()
    return {
        "ground-tile"
    }
end

local function picturesOut()
    return {
        {
            picture = "__base__/graphics/terrian/out-of-map.png",
            count = 1,
            size = 1
        }
    }
end

local function picturesFF(i)
    return  {
        {
            picture = M .. "/graphics/tile/ff" .. i .. "_1.png",
            count = 16,
            size = 1
        }
    }
end