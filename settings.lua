data:extend({
    {
        type = "int-setting",
        name = "Lax-train-charge-ammount",
        setting_type = "runtime-global",
        default_value = 10,
        minimum_value = 1,
        maximum_value  = 100,
        order = "tg"
    },
    {
        type = "int-setting",
        name = "Lax-train-charge-tickrate",
        setting_type = "startup",
        default_value = 24,
        minimum_value = 1,
        order = "a"
    },
    {
        type = "int-setting",
        name = "Lax-accu-buffer",
        setting_type = "startup",
        default_value = 25,
        minimum_value = 1,
        maximum_value  = 1000,
        order = "aa",
    },
    {
        type = "int-setting",
        name = "Lax-accu-charge",
        setting_type = "startup",
        default_value = 5,
        minimum_value = 1,
        maximum_value  = 1000,
        order = "ab"
    },
    {
        type = "int-setting",
        name = "Lax-accu-discharge",
        setting_type = "startup",
        default_value = 5,
        minimum_value = 0,
        maximum_value  = 1000,
        order = "ac"
    },
    
    
      {
        type = "int-setting",
        name = "Lax-basic-train-buffer",
        setting_type = "startup",
        default_value = 25,
        minimum_value = 1,
        maximum_value  = 1000,
        order = "tb",
    },  {
        type = "int-setting",
        name = "Lax-improved-train-buffer",
        setting_type = "startup",
        default_value = 50,
        minimum_value = 1,
        maximum_value  = 1000,
        order = "tc",
    },
    {
        type = "int-setting",
        name = "Lax-express-train-buffer",
        setting_type = "startup",
        default_value = 100,
        minimum_value = 1,
        maximum_value  = 1000,
        order = "td",
    },
    {
        type = "int-setting",
        name = "Lax-maglev-train-buffer",
        setting_type = "startup",
        default_value = 500,
        minimum_value = 1,
        maximum_value  = 1000,
        order = "tf",
    },
     {
        type = "bool-setting",
        name = "Lax-add-wagons",
        setting_type = "startup",
        default_value = true,
        order = "tfg",
    },
})