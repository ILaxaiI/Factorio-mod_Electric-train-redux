local locomotiveMk1 = util.table.deepcopy(data.raw.locomotive["locomotive"])
locomotiveMk1.name = "Electrical-Locomotive"
locomotiveMk1.minable.result = "Electrical-Locomotive"
locomotiveMk1.weight = 2000
locomotiveMk1.max_speed = 1.2
locomotiveMk1.max_power = "600KW"
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
locomotiveMk2.max_speed = 1.5
locomotiveMk2.braking_force = 50
locomotiveMk2.weight = 1800
locomotiveMk2.max_power = "2MW"
locomotiveMk2.minable.result = "Improved-Electrical-Locomotive"

local locomotiveMk3 = util.table.deepcopy(locomotiveMk1)
locomotiveMk3.name = "Express-Electrical-Locomotive"
locomotiveMk3.max_speed = 2
locomotiveMk3.braking_force = 100
locomotiveMk3.weight = 1600
locomotiveMk3.max_power = "4.5MW"
locomotiveMk3.minable.result = "Express-Electrical-Locomotive"

local locomotiveMk4 = util.table.deepcopy(locomotiveMk1)
locomotiveMk4.name = "Maglev-Locomotive"
locomotiveMk4.weight = 1000
locomotiveMk2.braking_force = 250
locomotiveMk4.max_speed = 3.5
locomotiveMk4.max_power = "10MW"
locomotiveMk4.minable.result = "Maglev-Locomotive"





if settings.startup["Lax-add-wagons"] then
    local wagon1 = util.table.deepcopy(data.raw["cargo-wagon"]["cargo-wagon"])
    wagon1.name = "improved-cargo-wagon"
    wagon1.inventory_size = 60
    wagon1.max_speed = 3.5
    wagon1.weight = 1500
    wagon1.minable.result = "improved-cargo-wagon"

    local wagon2 = util.table.deepcopy(wagon1)
    wagon2.name = "express-cargo-wagon"
    wagon2.inventory_size = 80
    wagon2.max_speed = 3.5
    wagon2.weight = 2000
    wagon2.minable.result = "express-cargo-wagon"


    local wagon3 = util.table.deepcopy(wagon1)
    wagon3.name = "maglev-cargo-wagon"
    wagon3.inventory_size = 120
    wagon3.max_speed = 3.5
    wagon3.weight = 1750
    wagon3.minable.result = "maglev-cargo-wagon"


    local fwagon1 = util.table.deepcopy(data.raw["fluid-wagon"]["fluid-wagon"])
    fwagon1.name= "improved-fluid-wagon"
    fwagon1.capacity = 50000
    fwagon1.max_speed=3.5
    fwagon1.weight=1500
    fwagon1.minable.result = "improved-fluid-wagon"

    local fwagon2 = util.table.deepcopy(fwagon1)
    fwagon2.name= "express-fluid-wagon"
    fwagon2.capacity = 75000
    fwagon2.max_speed=3.5
    fwagon2.weight=2000
    fwagon2.minable.result = "express-fluid-wagon"

    local fwagon3 = util.table.deepcopy(fwagon1)
    fwagon3.name= "maglev-fluid-wagon"
    fwagon3.capacity = 100000
    fwagon3.max_speed=3.5
    fwagon3.weight=1750
    fwagon3.minable.result = "maglev-fluid-wagon"

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




--local chargingStationCapacitorDummy = util.table.deepcopy(data.raw["accumulator"]["accumulator"])
--chargingStationCapacitorDummy.name = "Train-Charging-Station"
--chargingStationCapacitorDummy.energy_source = {
--    type = "electric",
--    buffer_capacity = settings.startup["Lax-accu-buffer"].value.."MJ",
--    usage_priority = "primary-input",
--    input_flow_limit = settings.startup["Lax-accu-charge"].value.."MW",
--    output_flow_limit = settings.startup["Lax-accu-discharge"].value.."W"
--}
--chargingStationCapacitorDummy.flags =
--{
--      "not-on-map",
--      "placeable-off-grid",
--      "not-in-kill-statistics"
--}
--chargingStationCapacitorDummy.collision_box = {{0, 0}, {0, 0}}
--chargingStationCapacitorDummy.icon = "__Electric-Trains-Redux__/graphics/icons/train-stop-charger.png"
--chargingStationCapacitorDummy.icon_size = 64
--chargingStationCapacitorDummy.mineable = nil
--chargingStationCapacitorDummy.selectable_in_game = false
--chargingStationCapacitorDummy.picture =
--{layers =
--    {
--      {
--        filename = "__Electric-Trains-Redux__/graphics/entities/empty.png",
--        priority = "high",
--        width = 64,
--        height = 64,
--    }
--  }
--}
--chargingStationCapacitorDummy.fast_replaceable_group = nil
--chargingStationCapacitorDummy.next_upgrade = nil
--chargingStationCapacitorDummy.charge_animation = nil
--chargingStationCapacitorDummy.water_reflection = nil
--chargingStationCapacitorDummy.discharge_animation = nil
--chargingStationCapacitorDummy.circuit_wire_connection_point = nil
--chargingStationCapacitorDummy.circuit_connector_sprites = nil
--chargingStationCapacitorDummy.circuit_wire_max_distance = nil
--chargingStationCapacitorDummy.default_output_signal = nil
 
 
 
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
