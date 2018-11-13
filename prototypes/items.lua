data:extend(
{
    {
        type = "item",
        name = "underground-station",
        icon = "__base__/graphics/icons/train-stop.png",
        icon_size = 32,
        flags = {"goes-to-quickbar"},
        subgroup = "transport",
        order = "a[train-system]-f[underground-station]",
        place_result = "underground-station",
        stack_size = 10
    },
    {
        type = "item",
        name = "underground-gateway",
        icon = "__base__/graphics/icons/gate.png",
        icon_size = 32,
        flags = {"goes-to-quickbar"},
        subgroup = "transport",
        order = "a[train-system]-g[underground-gateway]",
        place_result = "underground-gateway",
        stack_size = 10
    }
}
)