data:extend(
{
  {
        type = "recipe",
        name = "Electrical-Locomotive",
        energy_required = 5,
        enabled = false,
        ingredients =
        {
            {"locomotive", 1},
            {"copper-cable", 40},
            {"electronic-circuit", 15},
            {"battery", 10}
        },
        result = "Electrical-Locomotive",
        order = "a[train-system]-Lb",
    },
  
    {
        type = "recipe",
        name = "Improved-Electrical-Locomotive",
        energy_required = 5,
        enabled = false,
        ingredients =
        {
            {"battery", 20},
            {"electric-engine-unit", 24},
            {"advanced-circuit", 10},
            {"Electrical-Locomotive", 1}
        },
        result = "Improved-Electrical-Locomotive",
        order = "a[train-system]-Lc",
    },
    
    {
        type = "recipe",
        name = "Express-Electrical-Locomotive",
        energy_required = 5,
        enabled = false,
        category = "crafting-with-fluid",
        ingredients =
        {
            
            {"electric-engine-unit", 24},
            {"processing-unit", 10},
            {type="fluid", name= "lubricant", amount = 150},
            {"Improved-Electrical-Locomotive", 1}
        },
        result = "Express-Electrical-Locomotive",
        order = "a[train-system]-Ld",
    },
    
    
    {
        type = "recipe",
        name = "Maglev-Locomotive",
        energy_required = 5,
        enabled = false,
        category = "crafting-with-fluid",
        ingredients =
            {
                {type="fluid", name= "sulfuric-acid", amount = 150},
                {"electric-engine-unit", 24},
                {"rocket-control-unit", 10},
                {"low-density-structure", 20},
                {"Express-Electrical-Locomotive", 2}
            },
        result = "Maglev-Locomotive",
        order = "a[train-system]-Le",
    },
  
    {
        type = "recipe",
        name = "Charging-Station",
        energy_required = 5,
        enabled = false,
        ingredients =
        {
            {"train-stop", 1},
            {"accumulator", 5},
            {"electronic-circuit", 15},
            {"copper-cable", 50}
        },
        result = "Charging-Station",
        order = "a[train-system]-La"
    }
})



if settings.startup["Lax-add-wagons"] then
    data:extend({
    {
        type = "recipe",
        name = "improved-cargo-wagon",
        energy_required = 5,
        enabled = false,
        ingredients =
        {
            {"cargo-wagon", 1},
            {"steel-plate",10},
            {"advanced-circuit", 3},
        },
        result = "improved-cargo-wagon",
        order = "b[train-system]-La",
    },  
    {
        type = "recipe",
        category = "crafting-with-fluid",
        name = "express-cargo-wagon",
        energy_required = 5,
        enabled = false,
        ingredients =
        {
            {"improved-cargo-wagon", 1},
            {"processing-unit", 3},
            {type="fluid", name= "lubricant", amount = 150},
        },
        order = "b[train-system]-Lb",
        result = "express-cargo-wagon",
    },
    {
        type = "recipe",
        category = "crafting-with-fluid",
        name = "maglev-cargo-wagon",
        energy_required = 5,
        enabled = false,
        ingredients =
        {
            {"express-cargo-wagon",2},
            {"low-density-structure", 10},
            {type="fluid", name= "sulfuric-acid", amount = 150},
        },
        order = "b[train-system]-Lc",
        result = "maglev-cargo-wagon"
    },
    
    
    
    
       {
        type = "recipe",
        name = "improved-fluid-wagon",
        energy_required = 5,
        enabled = false,
        ingredients =
        {
            {"fluid-wagon", 1},
            {"storage-tank",1},
            {"steel-plate",10},
            {"advanced-circuit", 3},
        },
        result = "improved-fluid-wagon",
        order = "c[train-system]-La",
    },  
       {
        type = "recipe",
        name = "express-fluid-wagon",
        category = "crafting-with-fluid",
        energy_required = 5,
        enabled = false,
        ingredients =
        {
            {"improved-fluid-wagon", 1},
            {"storage-tank",1},
            {"processing-unit", 3},
            {type="fluid", name= "lubricant", amount = 150},
        },
        result = "express-fluid-wagon",    
        order = "c[train-system]-Lb",
        },  
       {
        type = "recipe",
        name = "maglev-fluid-wagon",
        category = "crafting-with-fluid",
        energy_required = 5,
        enabled = false,
        ingredients =
        {
            
            {"express-fluid-wagon",2},
            {"storage-tank",1},
            {"low-density-structure", 10},
            {type="fluid", name= "sulfuric-acid", amount = 150},
        },
        order = "c[train-system]-Lc",
        result = "maglev-fluid-wagon",
    }

    })
    
end
