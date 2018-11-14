local inspect = require("inspect")

local function createEntity(suffix, visible, count, sprite)
    local name = "underground-" .. suffix
--    local localised_name = {"entity-name.underground-" .. localised_suffix }
--    local result_name = "undergroud-" .. result_suffix
    local item_flags
    if visible then item_flags = {"goes-to-quickbar"} else item_flags = {"hidden"} end
    return {
        {
            type = "lab",
            name = name,
            icon = M .. "/graphics/icons/" .. name .. ".png",
            icon_size = 32,
--            flags = {"player-creation"},
            flags = { "not-blueprintable", "not-deconstructable" },
            operable = false,
            minable =
            {
                mining_time = 5,
                result = name,
                count = count
            },
            max_health = 500,
            on_animation = {
                filename = "__Free_Real_Estate__/graphics/entity/factory.png",
                width = 285,
                height = 224,
                shift = {1.0, 0.0},
                frame_count = 1,
                priority = "extra-high",
            },
            off_animation = {
                filename = "__Free_Real_Estate__/graphics/entity/factory.png",
                width = 285,
                height = 224,
                shift = {1.0, 0.0},
                frame_count = 1,
                priority = "extra-high",
            },
            working_sound = nil,
            inputs = {},
            corpse = "big-remnants",
            collision_box = {{-3.45, -3.2}, {3.45, 3.3}},
            selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
            dying_explosion = "massive-explosion",
            energy_source = {
                type = "electric",
                usage_priority = "secondary-input"
            },
            energy_usage = "1KW",
        }
    }
end

data:extend(createEntity("station", true, 1))
data:extend(createEntity("gateway", true, 1))

log(inspect.inspect(data.raw["lab"]))

--data:extend(
--{
--    {
--        type = "assembling-machine",
--        name = "underground-gateway",
--        icon = "__base__/graphics/icons/assembling-machine-1.png",
--        icon_size = 32,
--        flags = {"placeable-neutral", "placeable-player", "player-creation"},
--        minable = {hardness = 0.2, mining_time = 0.5, result = "underground-gateway"},
--        max_health = 300,
--        corpse = "big-remnants",
--        dying_explosion = "medium-explosion",
--        order = "a-f",
--        resistances =
--        {
--            {
--                type = "fire",
--                percent = 70
--            }
--        },
--        collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
--        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
--        fast_replaceable_group = "assembling-machine",
--        animation =
--        {
--            layers =
--            {
--                {
--                    filename = "__base__/graphics/entity/assembling-machine-1/assembling-machine-1.png",
--                    priority="high",
--                    width = 108,
--                    height = 114,
--                    frame_count = 32,
--                    line_length = 8,
--                    shift = util.by_pixel(0, 2),
--                    hr_version =
--                    {
--                        filename = "__base__/graphics/entity/assembling-machine-1/hr-assembling-machine-1.png",
--                        priority="high",
--                        width = 214,
--                        height = 226,
--                        frame_count = 32,
--                        line_length = 8,
--                        shift = util.by_pixel(0, 2),
--                        scale = 0.5
--                    }
--                },
--                {
--                    filename = "__base__/graphics/entity/assembling-machine-1/assembling-machine-1-shadow.png",
--                    priority="high",
--                    width = 95,
--                    height = 83,
--                    frame_count = 1,
--                    line_length = 1,
--                    repeat_count = 32,
--                    draw_as_shadow = true,
--                    shift = util.by_pixel(8.5, 5.5),
--                    hr_version =
--                    {
--                        filename = "__base__/graphics/entity/assembling-machine-1/hr-assembling-machine-1-shadow.png",
--                        priority="high",
--                        width = 190,
--                        height = 165,
--                        frame_count = 1,
--                        line_length = 1,
--                        repeat_count = 32,
--                        draw_as_shadow = true,
--                        shift = util.by_pixel(8.5, 5),
--                        scale = 0.5
--                    }
--                }
--            }
--        },
--        energy_source =
--        {
--            type = "electric",
--            usage_priority = "secondary-input",
--            emissions = 0.05 / 1.5
--        },
--        crafting_categories = {"crafting"},
--        crafting_speed = 0.5,
--        energy_usage = "90kW",
--        ingredient_count = 2,
--    },
--    {
--        type = "assembling-machine",
--        name = "underground-station",
--        icon = "__base__/graphics/icons/assembling-machine-2.png",
--        icon_size = 32,
--        flags = {"placeable-neutral", "placeable-player", "player-creation"},
--        minable = {hardness = 0.2, mining_time = 0.5, result = "underground-station"},
--        max_health = 300,
--        corpse = "big-remnants",
--        dying_explosion = "medium-explosion",
--        order = "a-f",
--        resistances =
--        {
--            {
--                type = "fire",
--                percent = 70
--            }
--        },
--        collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
--        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
--        fast_replaceable_group = "assembling-machine",
--        animation =
--        {
--            layers =
--            {
--                {
--                    filename = "__base__/graphics/entity/assembling-machine-1/assembling-machine-1.png",
--                    priority="high",
--                    width = 108,
--                    height = 114,
--                    frame_count = 32,
--                    line_length = 8,
--                    shift = util.by_pixel(0, 2),
--                    hr_version =
--                    {
--                        filename = "__base__/graphics/entity/assembling-machine-1/hr-assembling-machine-1.png",
--                        priority="high",
--                        width = 214,
--                        height = 226,
--                        frame_count = 32,
--                        line_length = 8,
--                        shift = util.by_pixel(0, 2),
--                        scale = 0.5
--                    }
--                },
--                {
--                    filename = "__base__/graphics/entity/assembling-machine-1/assembling-machine-1-shadow.png",
--                    priority="high",
--                    width = 95,
--                    height = 83,
--                    frame_count = 1,
--                    line_length = 1,
--                    repeat_count = 32,
--                    draw_as_shadow = true,
--                    shift = util.by_pixel(8.5, 5.5),
--                    hr_version =
--                    {
--                        filename = "__base__/graphics/entity/assembling-machine-1/hr-assembling-machine-1-shadow.png",
--                        priority="high",
--                        width = 190,
--                        height = 165,
--                        frame_count = 1,
--                        line_length = 1,
--                        repeat_count = 32,
--                        draw_as_shadow = true,
--                        shift = util.by_pixel(8.5, 5),
--                        scale = 0.5
--                    }
--                }
--            }
--        },
--        energy_source =
--        {
--            type = "electric",
--            usage_priority = "secondary-input",
--            emissions = 0.05 / 1.5
--        },
--        crafting_categories = {"crafting"},
--        crafting_speed = 0.5,
--        energy_usage = "90kW",
--        ingredient_count = 2,
--    }
--}
--)