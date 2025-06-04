-- client.lua

local function notify(msg)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(msg)
    DrawNotification(false, false)
end

RegisterCommand(Config.Commands.EquipWatch, function()
    local anim = Config.Animations.CheckWatch
    RequestAnimDict(anim.dict)
    while not HasAnimDictLoaded(anim.dict) do
        Wait(10)
    end
    TaskPlayAnim(PlayerPedId(), anim.dict, anim.anim, 8.0, -8.0, anim.duration, 49, 0, false, false, false)
    notify("~g~Smartwatch equipped.")
end)

RegisterCommand(Config.Commands.LocateHomie, function()
    notify("~b~Scanning for homies...")
    -- Logic to locate NPCs/players with tags or distance
end)

RegisterCommand(Config.Commands.FindCar, function()
    notify("~b~Tracking your vehicle...")
    -- Add vehicle tracking logic here
end)

RegisterCommand(Config.Commands.OrderFood, function()
    local anim = Config.Animations.OrderFood
    RequestAnimDict(anim.dict)
    while not HasAnimDictLoaded(anim.dict) do
        Wait(10)
    end
    TaskPlayAnim(PlayerPedId(), anim.dict, anim.anim, 8.0, -8.0, anim.duration, 49, 0, false, false, false)
    notify("~y~Food order placed with Barrio Bites.")
end)

RegisterCommand(Config.Commands.ChargeWatch, function()
    notify("~g~Charging smartwatch battery...")
    -- Add charging logic
end)
