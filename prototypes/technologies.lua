data:extend({
{
    type = "technology",
    name = "Remote-Energy-Distribution",
    icon_size = 256, icon_mipmaps = 1,
    icon = "__Electric-Trains-Redux__/graphics/technology/Railway Energy Distribution.png",
    effects =
    {
     {
        type = "unlock-recipe",
        recipe = "Charging-Station"
      }, 
      {
        type = "unlock-recipe",
        recipe = "Electrical-Locomotive",
      },
    },
    prerequisites = {
        "electric-energy-accumulators",
        "automated-rail-transportation",
    },
    unit =
    {
      count = 250,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 30
    },
    order = "c-g-aa",
    upgrade = false
  },
  
  
  {
    type = "technology",
    name = "Improved-Electrical-Locomotives",
    icon_size = 64, icon_mipmaps = 1,
    icon = "__Electric-Trains-Redux__/graphics/icons/locomotive.png",
    effects =
    {
        {
            type = "unlock-recipe",
            recipe = "Improved-Electrical-Locomotive",
        },
        settings.startup["Lax-add-wagons"].value and {
            type = "unlock-recipe",
            recipe = "improved-cargo-wagon"
        } or nil,
        settings.startup["Lax-add-wagons"].value and {
            type = "unlock-recipe",
            recipe = "improved-fluid-wagon"
        } or nil
    },
    prerequisites = {
        "Remote-Energy-Distribution",
        "advanced-electronics",
        "electric-engine",
    },
    unit =
    {
      count = 300,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 30
    },
    order = "c-g-aa",
    upgrade = false
  },
  
  
   {
    type = "technology",
    name = "Express-Electrical-Locomotives",
    icon_size = 64, icon_mipmaps = 1,
    icon = "__Electric-Trains-Redux__/graphics/icons/locomotive.png",
    effects =
    {
        {
            type = "unlock-recipe",
            recipe = "Express-Electrical-Locomotive",
        },
        settings.startup["Lax-add-wagons"].value and {
            type = "unlock-recipe",
            recipe = "express-cargo-wagon"
        } or nil,settings.startup["Lax-add-wagons"].value and {
            type = "unlock-recipe",
            recipe = "express-fluid-wagon"
        } or nil,

    },
    prerequisites = {
        "Improved-Electrical-Locomotives",
        "advanced-electronics-2",
        "production-science-pack",
    },
    unit =
    {
      count = 400,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack",1}
      },
      time = 30
    },
    order = "c-g-aa",
    upgrade = false
  },
  
   {
    type = "technology",
    name = "Maglev-Locomotive",
    icon_size = 64, icon_mipmaps = 1,
    icon = "__Electric-Trains-Redux__/graphics/icons/locomotive.png",
    effects =
    {
        {
            type = "unlock-recipe",
            recipe = "Maglev-Locomotive",
        },
        settings.startup["Lax-add-wagons"].value and {
            type = "unlock-recipe",
            recipe = "maglev-cargo-wagon"
        } or nil,    settings.startup["Lax-add-wagons"].value and {
            type = "unlock-recipe",
            recipe = "maglev-fluid-wagon"
        } or nil,
    },
    prerequisites = {
        "Express-Electrical-Locomotives",
        "rocket-control-unit",
        "low-density-structure",
    },
    unit =
    {
      count = 500,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack",1},
        {"utility-science-pack",1}
      },
      time = 30
    },
    order = "c-g-aa",
    upgrade = false
  },
  
  })