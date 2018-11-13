local order = "m-q-"

data:extend(
{
    {
        type = "technology",
        name = "underground-railway",
        icon = M.."/graphics/technology/undergroud-railway.png",
        icon_size = 128,
        prerequisites = {"railway"},
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "undergroud-station"
            },
            {
                type = "unlock-recipe",
                recipe = "undegroup-gateway"
            }
        },
        unit =
        {
            count = 150,
            ingredients =
            {
                {"science-pack-1", 1},
                {"science-pack-2", 1}
            },
            time = 60
        },
        order = order.."a-a"
    }
}
)