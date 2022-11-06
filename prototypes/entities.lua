local locomotiveMk1 = util.table.deepcopy(data.raw.locomotive["locomotive"])
locomotiveMk1.name = "Electrical-Locomotive"
locomotiveMk1.minable.result = "Electrical-Locomotive"

locomotiveMk1.weight = settings.startup["Lax-loc1-weight"].value
locomotiveMk1.max_speed = settings.startup["Lax-loc1-max_speed"].value
locomotiveMk1.max_power = settings.startup["Lax-loc1-max_power"].value .. "KW"
locomotiveMk1.breaking_force = settings.startup["Lax-loc1-breaking_force"].value

locomotiveMk1.reversing_power_modifier = 1.0
locomotiveMk1.burner.fuel_category = "train-power"
locomotiveMk1.burner.fuel_inventory_size = 0
locomotiveMk1.burner.burnt_inventory_size = 0
locomotiveMk1.burner.smoke = nil
locomotiveMk1.color = {r = 0, g = 0.33, b = 0.52, a = 0.5}
locomotiveMk1.stop_trigger = 
{
  {
    type = "play-sound",
    sound =
    {
      {
        filename = "__base__/sound/train-breaks.ogg",
        volume = 0.3
      }
    }
  }
}


local locomotiveMk2 = util.table.deepcopy(locomotiveMk1)
locomotiveMk2.name = "Improved-Electrical-Locomotive"
locomotiveMk2.max_speed = settings.startup["Lax-loc2-max_speed"].value
locomotiveMk2.braking_force = settings.startup["Lax-loc2-breaking_force"].value
locomotiveMk2.weight = settings.startup["Lax-loc2-weight"].value
locomotiveMk2.max_power = settings.startup["Lax-loc2-max_power"].value .. "KW"
locomotiveMk2.minable.result = "Improved-Electrical-Locomotive"

local locomotiveMk3 = util.table.deepcopy(locomotiveMk1)
locomotiveMk3.name = "Express-Electrical-Locomotive"
locomotiveMk3.max_speed = settings.startup["Lax-loc3-max_speed"].value
locomotiveMk3.braking_force = settings.startup["Lax-loc3-breaking_force"].value
locomotiveMk3.weight = settings.startup["Lax-loc3-weight"].value
locomotiveMk3.max_power = settings.startup["Lax-loc3-max_power"].value .. "KW"
locomotiveMk3.minable.result = "Express-Electrical-Locomotive"

local locomotiveMk4 = util.table.deepcopy(locomotiveMk1)
locomotiveMk4.name = "Maglev-Locomotive"
locomotiveMk4.weight = settings.startup["Lax-loc4-weight"].value
locomotiveMk2.braking_force = settings.startup["Lax-loc4-breaking_force"].value
locomotiveMk4.max_speed = settings.startup["Lax-loc4-max_speed"].value
locomotiveMk4.max_power = settings.startup["Lax-loc4-max_power"].value .. "KW"
locomotiveMk4.minable.result = "Maglev-Locomotive"





if settings.startup["Lax-add-wagons"] then
    local wagon1 = util.table.deepcopy(data.raw["cargo-wagon"]["cargo-wagon"])
    wagon1.name = "improved-cargo-wagon"
    wagon1.inventory_size = settings.startup["Lax-wagon1-size"].value
    wagon1.weight = settings.startup["Lax-wagon1-weight"].value
    wagon1.minable.result = "improved-cargo-wagon"
    wagon1.max_speed = settings.startup["Lax-loc2-max_speed"].value

    local wagon2 = util.table.deepcopy(wagon1)
    wagon2.name = "express-cargo-wagon"
    wagon2.inventory_size = settings.startup["Lax-wagon2-size"].value
    wagon2.weight = settings.startup["Lax-wagon2-weight"].value
    wagon2.minable.result = "express-cargo-wagon"
    wagon2.max_speed = settings.startup["Lax-loc3-max_speed"].value

    local wagon3 = util.table.deepcopy(wagon1)
    wagon3.name = "maglev-cargo-wagon"
    wagon3.inventory_size =  settings.startup["Lax-wagon3-size"].value
    wagon3.weight = settings.startup["Lax-wagon3-weight"].value
    wagon3.minable.result = "maglev-cargo-wagon"
    wagon3.max_speed = settings.startup["Lax-loc4-max_speed"].value

    local fwagon1 = util.table.deepcopy(data.raw["fluid-wagon"]["fluid-wagon"])
    fwagon1.name= "improved-fluid-wagon"
    fwagon1.capacity = settings.startup["Lax-fwagon1-size"].value * 1000
    fwagon1.weight = settings.startup["Lax-fwagon1-weight"].value
    fwagon1.minable.result = "improved-fluid-wagon"
    fwagon1.max_speed = settings.startup["Lax-loc2-max_speed"].value

    local fwagon2 = util.table.deepcopy(fwagon1)
    fwagon2.name = "express-fluid-wagon"
    fwagon2.capacity = settings.startup["Lax-fwagon2-size"].value * 1000
    fwagon2.weight = settings.startup["Lax-fwagon2-weight"].value
    fwagon2.minable.result = "express-fluid-wagon"
    fwagon2.max_speed = settings.startup["Lax-loc3-max_speed"].value

    local fwagon3 = util.table.deepcopy(fwagon1)
    fwagon3.name= "maglev-fluid-wagon"
    fwagon3.capacity = settings.startup["Lax-fwagon3-size"].value * 1000
    fwagon3.weight = settings.startup["Lax-fwagon3-weight"].value
    fwagon3.minable.result = "maglev-fluid-wagon"
    fwagon3.max_speed = settings.startup["Lax-loc4-max_speed"].value

    data:extend({
        wagon1,
        wagon2,
        wagon3,
        fwagon1,
        fwagon2,
        fwagon3
    })
end


local chargingStation = util.table.deepcopy(data.raw["train-stop"]["train-stop"])
chargingStation.name = "Charging-Station"
chargingStation.color={r=0.15,  g=0.25, b=0.95, a=0.7}
chargingStation.minable.result = "Charging-Station"


chargingStation.fast_replaceable_group = "train-stop"




local chargingStationCapacitorDummy = {
    type = "electric-energy-interface",
    name = "Train-Charging-Station",
    icon =  "__Electric-Trains-Redux__/graphics/icons/train-stop-charger.png",
    icon_size = 64, icon_mipmaps = 4,
    
    max_health = 150,
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0, -0}, {0, 0}},
    selectable_in_game = false,
    energy_source =
    {
        type = "electric",
        buffer_capacity = settings.startup["Lax-accu-buffer"].value.."MJ",
        usage_priority = "primary-input",
        input_flow_limit = settings.startup["Lax-accu-charge"].value.."MW",
        output_flow_limit = settings.startup["Lax-accu-discharge"].value.."MW"    
    },
    picture =
    {
        filename = "__Electric-Trains-Redux__/graphics/entities/empty.png",
        priority = "high",
        width = 64,
        height = 64,
    },
    order = "h-e-e-i"
  }
 
 
 
data:extend({
    locomotiveMk1,locomotiveMk2,locomotiveMk3,locomotiveMk4,
    chargingStation,
    chargingStationCapacitorDummy
})
