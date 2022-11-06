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
    },
    
    
    
    
    {
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
        type = "int-setting",
        name = "Lax-loc1-weight",
        setting_type = "startup",
        default_value = 2000,
        minimum_value = 1,
        maximum_value  = 10000,
        order = "tfa",
    },
    {
        type = "double-setting",
        name = "Lax-loc1-max_speed",
        setting_type = "startup",
        default_value = 1.2,
        minimum_value = .1,
        maximum_value  = 100,
        order = "tfa",
    },
    {
        type = "int-setting",
        name = "Lax-loc1-breaking_force",
        setting_type = "startup",
        default_value = 25,
        minimum_value = 1,
        maximum_value  = 1000,
        order = "tfa",
    },
    {
        type = "int-setting",
        name = "Lax-loc1-max_power",
        setting_type = "startup",
        default_value = 600,
        minimum_value = 1,
        maximum_value  = 100000,
        order = "tfa",
    },



    {
        type = "int-setting",
        name = "Lax-loc2-weight",
        setting_type = "startup",
        default_value = 1800,
        minimum_value = 1,
        maximum_value  = 10000,
        order = "tfa",
    },
    {
        type = "double-setting",
        name = "Lax-loc2-max_speed",
        setting_type = "startup",
        default_value = 1.5,
        minimum_value = .1,
        maximum_value  = 100,
        order = "tfa",
    },
    {
        type = "int-setting",
        name = "Lax-loc2-breaking_force",
        setting_type = "startup",
        default_value = 50,
        minimum_value = 1,
        maximum_value  = 1000,
        order = "tfa",
    },
    {
        type = "int-setting",
        name = "Lax-loc2-max_power",
        setting_type = "startup",
        default_value = 2000,
        minimum_value = 1,
        maximum_value  = 100000,
        order = "tfa",
    },

    {
        type = "int-setting",
        name = "Lax-loc3-weight",
        setting_type = "startup",
        default_value = 1600,
        minimum_value = 1,
        maximum_value  = 10000,
        order = "tfa",
    },
    {
        type = "double-setting",
        name = "Lax-loc3-max_speed",
        setting_type = "startup",
        default_value = 2,
        minimum_value = .1,
        maximum_value  = 100,
        order = "tfa",
    },
    {
        type = "int-setting",
        name = "Lax-loc3-breaking_force",
        setting_type = "startup",
        default_value = 100,
        minimum_value = 1,
        maximum_value  = 1000,
        order = "tfa",
    },
    {
        type = "int-setting",
        name = "Lax-loc3-max_power",
        setting_type = "startup",
        default_value = 4500,
        minimum_value = 1,
        maximum_value  = 100000,
        order = "tfa",
    },



    {
        type = "int-setting",
        name = "Lax-loc4-weight",
        setting_type = "startup",
        default_value = 1000,
        minimum_value = 1,
        maximum_value  = 10000,
        order = "tfa",
    },
    {
        type = "double-setting",
        name = "Lax-loc4-max_speed",
        setting_type = "startup",
        default_value = 3.5,
        minimum_value = .1,
        maximum_value  = 100,
        order = "tfa",
    },
    {
        type = "int-setting",
        name = "Lax-loc4-breaking_force",
        setting_type = "startup",
        default_value = 250,
        minimum_value = 1,
        maximum_value  = 1000,
        order = "tfa",
    },
    {
        type = "int-setting",
        name = "Lax-loc4-max_power",
        setting_type = "startup",
        default_value = 10000,
        minimum_value = 1,
        maximum_value  = 100000,
        order = "tfa",
    },



     {
        type = "bool-setting",
        name = "Lax-add-wagons",
        setting_type = "startup",
        default_value = true,
        order = "tfg",
    },







    {
        type = "int-setting",
        name = "Lax-wagon1-size",
        setting_type = "startup",
        default_value = 60,
        minimum_value = 1,
        maximum_value = 1000,
        order = "tfga1",
    },
    {
        type = "int-setting",
        name = "Lax-wagon2-size",
        setting_type = "startup",
        default_value = 80,
        minimum_value = 1,
        maximum_value = 1000,
        order = "tfga2",
    },
    {
        type = "int-setting",
        name = "Lax-wagon3-size",
        setting_type = "startup",
        default_value = 120,
        minimum_value = 1,
        maximum_value = 1000,
        order = "tfga3",
    },
    {
        type = "int-setting",
        name = "Lax-wagon1-weight",
        setting_type = "startup",
        default_value = 1500,
        minimum_value = 1,
        maximum_value = 100000,
        order = "tfgb1",
    },

    {
        type = "int-setting",
        name = "Lax-wagon2-weight",
        setting_type = "startup",
        default_value = 2000,
        minimum_value = 1,
        maximum_value = 100000,
        order = "tfgb2",
    },

    {
        type = "int-setting",
        name = "Lax-wagon3-weight",
        setting_type = "startup",
        default_value = 1750,
        minimum_value = 1,
        maximum_value = 100000,
        order = "tfgb3",
    },

    {
        type = "int-setting",
        name = "Lax-fwagon1-size",
        setting_type = "startup",
        default_value = 50,
        minimum_value = 1,
        maximum_value = 1000,
        order = "tfgc1",
    },
    {
        type = "int-setting",
        name = "Lax-fwagon2-size",
        setting_type = "startup",
        default_value = 75,
        minimum_value = 1,
        maximum_value = 1000,
        order = "tfgc2",
    },
    {
        type = "int-setting",
        name = "Lax-fwagon3-size",
        setting_type = "startup",
        default_value = 100,
        minimum_value = 1,
        maximum_value = 1000,
        order = "tfgc1",
    },
    {
        type = "int-setting",
        name = "Lax-fwagon1-weight",
        setting_type = "startup",
        default_value = 1500,
        minimum_value = 1,
        maximum_value = 100000,
        order = "tfge1",
    },


    {
        type = "int-setting",
        name = "Lax-fwagon2-weight",
        setting_type = "startup",
        default_value = 2000,
        minimum_value = 1,
        maximum_value = 100000,
        order = "tfge2",
    },
    {
        type = "int-setting",
        name = "Lax-fwagon3-weight",
        setting_type = "startup",
        default_value = 1750,
        minimum_value = 1,
        maximum_value = 100000,
        order = "tfge3",
    },
})