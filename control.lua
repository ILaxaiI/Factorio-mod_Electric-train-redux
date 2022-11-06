local isCharger = {["Charging-Station"] = "Train-Charging-Station"}

-- holds train names but also how much power they can store 
local listOfTrainNames = {
    ["Electrical-Locomotive"] = {maxfuel = settings.startup["Lax-basic-train-buffer"].value*1e6,fuelItem = "train-power"},
    ["Improved-Electrical-Locomotive"] = {maxfuel =settings.startup["Lax-improved-train-buffer"].value*1e6,fuelItem = "train-power-1"},
    ["Express-Electrical-Locomotive"] = {maxfuel =settings.startup["Lax-express-train-buffer"].value*1e6,fuelItem = "train-power-2"},
    ["Maglev-Locomotive"] = {maxfuel =settings.startup["Lax-maglev-train-buffer"].value*1e6,fuelItem = "train-power-3"},
}




local function isRegistered(luaTrain)
    return global.electricTrainList[luaTrain.id]
end


local function register(luaTrain)
    global.electricTrainList[luaTrain.id] = luaTrain
end



local function isETrain(luaTrain)
    for i,v in pairs(luaTrain.locomotives) do
        for k,v2 in pairs(v) do
            if listOfTrainNames[v2.name] then
                return true
            end
        end
    end
end
script.on_init(function()
    global.stationToAccumulator = {}
    global.electricTrainList = {}
end)

script.on_configuration_changed(function()
    global.stationToAccumulator = global.stationToAccumulator or {}
    local surfaces = game.surfaces
    
    
    for i,v in pairs(global.stationToAccumulator) do
        if v.valid then
            local surface = v.surface
            local replacement = surface.create_entity(
            { 
                name = isCharger["Charging-Station"],
                position = v.position,
                force = v.force
            })
            v.destroy()
            global.stationToAccumulator[i] = replacement
        else
            global.stationToAccumulator[i] = nil
        end
    end
end)



script.on_event(defines.events.on_train_created, function(event)
    local train = event.train
    if isETrain(train) then
        register(train)
    else
    end
end)



local function chargeTrains()
    local chargeRate  = settings.global["Lax-train-charge-ammount"].value * 1e6
    for id,train in pairs(global.electricTrainList) do
        if train.valid then
            local stop = train.station or train.path_end_stop
            if stop and stop.valid and isCharger[stop.name] then
                local accu = global.stationToAccumulator[stop.unit_number]
                if accu and accu.valid then
                for k,v in pairs(train.locomotives) do
                    for i,loc in pairs(v) do
                        if loc.valid and listOfTrainNames[loc.name] then
                            if not loc.burner.currently_burning then
                                loc.burner.currently_burning = listOfTrainNames[loc.name].fuelItem
                            end
 
                            local powerMoved = math.min(chargeRate,accu.energy,listOfTrainNames[loc.name].maxfuel - loc.burner.remaining_burning_fuel)
                            accu.energy = accu.energy - powerMoved
                            loc.burner.remaining_burning_fuel = loc.burner.remaining_burning_fuel + powerMoved
                        end
                    end
                end
                end
            end
        else
            global.electricTrainList[id] = nil
        end
    end
end

script.on_nth_tick(settings.startup["Lax-train-charge-tickrate"].value,chargeTrains)


local function on_built(event)
  local entity = event.entity or event.created_entity
  if isCharger[entity.name] then
    local interface = entity.surface.create_entity(
    { 
      name = isCharger[entity.name],
      position = entity.position,
      force = entity.force
    })
    interface.destructible = false
    global.stationToAccumulator[entity.unit_number] = interface
  end
end


local function on_destroy(event)
    local entity = event.entity
    if isCharger[event.entity.name] then
    local accu = global.stationToAccumulator[event.entity.unit_number]

    if accu then accu.destroy() else
        local center = event.entity.position
        for _, entity in pairs(event.entity.surface.find_entities_filtered{
            area = {{center.x-0.5, center.y-0.5}, {center.x+0.5, center.y+0.5}},
            name = isCharger[event.entity.name]}) do
            entity.destroy()
        end
    end
 end	
end


script.on_event(defines.events.on_built_entity, on_built)
script.on_event(defines.events.on_robot_built_entity, on_built)
script.on_event(defines.events.script_raised_revive, on_built)
script.on_event(defines.events.script_raised_built, on_built)

script.on_event(defines.events.on_player_mined_entity, on_destroy)
script.on_event(defines.events.on_robot_mined_entity, on_destroy)
script.on_event(defines.events.on_entity_died, on_destroy)
script.on_event(defines.events.script_raised_destroy, on_destroy)
