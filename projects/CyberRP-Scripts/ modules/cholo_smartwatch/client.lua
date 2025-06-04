-- client.lua for cholo_smartwatch

local function Notify(msg)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(msg)
    DrawNotification(false, false)
end

-- Equip the watch
RegisterCommand(Config.Commands.EquipWatch, function()
    local anim = Config.Animations.CheckWatch
    RequestAnimDict(anim.dict)
    while not HasAnimDictLoaded(anim.dict) do Wait(10) end
    TaskPlayAnim(PlayerPedId(), anim.dict, anim.anim, 8.0, -8.0, anim.duration, 49, 0, false, false, false)
    Notify("~g~Smartwatch equipped.")
end)

-- Find a homie
RegisterCommand(Config.Commands.LocateHomie, function()
    Notify("📡 Locating nearby homies...")
    -- Simulated scan logic placeholder
    Wait(2000)
    Notify(Config.Notifications.HomieFound)
end)

-- Track vehicle
RegisterCommand(Config.Commands.FindCar, function()
    Notify("🚗 Tracking your ride...")
    -- Simulated car tracking logic
    Wait(2000)
    Notify(Config.Notifications.CarFound)
end)

-- Order food
RegisterCommand(Config.Commands.OrderFood, function()
    local anim = Config.Animations.OrderFood
    RequestAnimDict(anim.dict)
    while not HasAnimDictLoaded(anim.dict) do Wait(10) end
    TaskPlayAnim(PlayerPedId(), anim.dict, anim.anim, 8.0, -8.0, anim.duration, 49, 0, false, false, false)
    
    local deliveryTime = math.random(Config.Features.FoodDelivery.deliveryTime[1], Config.Features.FoodDelivery.deliveryTime[2])
    Notify(string.format(Config.Notifications.FoodOrdered, deliveryTime))
end)

-- Charge battery
RegisterCommand(Config.Commands.ChargeWatch, function()
    Notify("🔋 Charging your smartwatch...")
    -- Simulated battery charge logic
    Wait(2000)
    Notify("✅ Smartwatch fully charged.")
end)
