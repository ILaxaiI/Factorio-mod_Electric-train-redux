data:extend({
    {
        type = "item-with-entity-data",
        name = "Electrical-Locomotive",
        icon = "__Electric-Trains-Redux__/graphics/icons/locomotive.png",
        icon_size = 64,
        subgroup = "transport",
        order = "b[train-system]-fb[electric-locomotive]",
        place_result =  "Electrical-Locomotive",
        stack_size = 5
    },
  
    {
        type = "item-with-entity-data",
        name = "Improved-Electrical-Locomotive",
        icon = "__Electric-Trains-Redux__/graphics/icons/locomotive.png",
        icon_size = 64,
        subgroup = "transport",
        order = "b[train-system]-fc[electric-locomotive]",
        place_result =  "Improved-Electrical-Locomotive",
        stack_size = 5
    },
    {
        type = "item-with-entity-data",
        name = "Express-Electrical-Locomotive",
        icon = "__Electric-Trains-Redux__/graphics/icons/locomotive.png",
        icon_size = 64,
        subgroup = "transport",
        order = "b[train-system]-fd[electric-locomotive]",
        place_result = "Express-Electrical-Locomotive",
        stack_size = 5
    },
    {
        type = "item-with-entity-data",
        name = "Maglev-Locomotive",
        icon = "__Electric-Trains-Redux__/graphics/icons/locomotive.png",
        icon_size = 64,
        subgroup = "transport",
        order = "b[train-system]-fg[electric-locomotive]",
        place_result = "Maglev-Locomotive",
        stack_size = 5
    },
  
    {
    type = "item",
    name = "Charging-Station",
    icon = "__Electric-Trains-Redux__/graphics/icons/train-stop-charger.png",
    icon_size = 64,
    subgroup = "transport",
    order = "b[train-system]-fa[electric-locomotive]",
    place_result = "Charging-Station",
    stack_size = 50
   },
  
  
  {
    type = "item",
    name = "train-power",
    icon = "__base__/graphics/icons/accumulator.png",
    icon_size = 64,
    fuel_category = "train-power"   ,
    fuel_value = settings.startup["Lax-basic-train-buffer"].value.."MJ",
    subgroup = "raw-material",
    order = "h[battery]",
    stack_size = 1
  },
  {
    type = "item",
    name = "train-power-1",
    icon = "__base__/graphics/icons/accumulator.png",
    icon_size = 64,
    fuel_category = "train-power"   ,
    fuel_value = settings.startup["Lax-improved-train-buffer"].value.."MJ",
    subgroup = "raw-material",
    order = "h[battery]",
    stack_size = 1
  },
  {
    type = "item",
    name = "train-power-2",
    icon = "__base__/graphics/icons/accumulator.png",
    icon_size = 64,
    fuel_category = "train-power"   ,
    fuel_value = settings.startup["Lax-express-train-buffer"].value.."MJ",
    subgroup = "raw-material",
    order = "h[battery]",
    stack_size = 1
  },  
  {
    type = "item",
    name = "train-power-3",
    icon = "__base__/graphics/icons/accumulator.png",
    icon_size = 64,
    fuel_category = "train-power"   ,
    fuel_value = settings.startup["Lax-maglev-train-buffer"].value.."MJ",
    subgroup = "raw-material",
    order = "h[battery]",
    stack_size = 1
  },
})




if settings.startup["Lax-add-wagons"] then
    data:extend({
    {
        type = "item-with-entity-data",
        name = "improved-cargo-wagon",
        icon = "__base__/graphics/icons/cargo-wagon.png",
        icon_size = 64,
        subgroup = "transport",
        order = "c[train-system]-fa[electric-locomotive]",
        place_result = "improved-cargo-wagon",
        stack_size = 5
    },
    {
        type = "item-with-entity-data",
        name = "express-cargo-wagon",
        icon = "__base__/graphics/icons/cargo-wagon.png",
        icon_size = 64,
        subgroup = "transport",
        order = "c[train-system]-fb[electric-locomotive]",
        place_result = "express-cargo-wagon",
        stack_size = 5
    },
    {
        type = "item-with-entity-data",
        name = "maglev-cargo-wagon",
        icon = "__base__/graphics/icons/cargo-wagon.png",
        icon_size = 64,
        subgroup = "transport",
        order = "c[train-system]-fc[electric-locomotive]",
        place_result = "maglev-cargo-wagon",
        stack_size = 5
    },


    {
        type = "item-with-entity-data",
        name = "improved-fluid-wagon" ,
        icon = "__base__/graphics/icons/fluid-wagon.png",
        icon_size = 64,
        subgroup = "transport",
        order = "c[train-system]-fc[electric-locomotive]",
        place_result = "improved-fluid-wagon" ,
        stack_size = 5
    },
    {
        type = "item-with-entity-data",
        name = "express-fluid-wagon" ,
        icon = "__base__/graphics/icons/fluid-wagon.png",
        icon_size = 64,
        subgroup = "transport",
        order = "c[train-system]-fc[electric-locomotive]",
        place_result = "express-fluid-wagon" ,
        stack_size = 5
    },
    {
        type = "item-with-entity-data",
        name = "maglev-fluid-wagon" ,
        icon = "__base__/graphics/icons/fluid-wagon.png",
        icon_size = 64,
        subgroup = "transport",
        order = "c[train-system]-fc[electric-locomotive]",
        place_result = "maglev-fluid-wagon" ,
        stack_size = 5
    }
    })
    
end

    