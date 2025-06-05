--[[ Custom Lowrider Vehicle Integration Script - Enhanced Version ]]

-- Configuration
local LOWRIDER_MODEL_NAME = 'LOWRIDER' -- Ensure this matches your vehicle model name
local LOWRIDER_DISPLAY_NAME = 'Futuristic Lowrider'
local NEON_TOGGLE_KEY = 74 -- H Key
local FRONT_HOP_KEY = 51 -- E Key
local REAR_HOP_KEY = 52 -- Q Key
local ALL_WHEELS_UP_KEY = 73 -- G Key
local ALL_WHEELS_DOWN_KEY = 75 -- J Key
local SMARTWATCH_KEY = 56 -- M Key

local lowriderStates = {}

Citizen.CreateThread(function()
    AddTextEntry(LOWRIDER_MODEL_NAME, LOWRIDER_DISPLAY_NAME)
end)

RegisterCommand('spawnlowrider', function()
    local playerPed = PlayerPedId()
    local modelHash = GetHashKey(LOWRIDER_MODEL_NAME)

    RequestModel(modelHash)
    while not HasModelLoaded(modelHash) do
        Citizen.Wait(100)
    end

    local coords = GetEntityCoords(playerPed)
    local heading = GetEntityHeading(playerPed)
    local vehicle = CreateVehicle(modelHash, coords.x, coords.y, coords.z, heading, true, false)

    SetPedIntoVehicle(playerPed, vehicle, -1)
    SetVehicleModKit(vehicle, 0)

    lowriderStates[vehicle] = {
        frontHeight = 0.0,
        rearHeight = 0.0
    }
end, false)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local playerPed = PlayerPedId()
        local vehicle = GetVehiclePedIsIn(playerPed, false)

        if vehicle and IsVehicleModel(vehicle, GetHashKey(LOWRIDER_MODEL_NAME)) then
            local currentVehicleState = lowriderStates[vehicle] or { frontHeight = 0.0, rearHeight = 0.0 }

            if IsControlJustPressed(0, FRONT_HOP_KEY) then
                ApplyForceToEntity(vehicle, 1, 0.0, 0.0, 5.0, 0.0, 2.0, 0.0, 0, true, true, true, false, true)
                SetVehicleSuspensionUpperLimit(vehicle, 0.0, 0)
            end

            if IsControlJustPressed(0, REAR_HOP_KEY) then
                ApplyForceToEntity(vehicle, 1, 0.0, 0.0, 5.0, 0.0, -2.0, 0.0, 0, true, true, true, false, true)
                SetVehicleSuspensionUpperLimit(vehicle, 0.0, 1)
            end

            if IsControlJustPressed(0, ALL_WHEELS_UP_KEY) then
                SetVehicleSuspensionUpperLimit(vehicle, -1.0, 0)
                SetVehicleSuspensionUpperLimit(vehicle, -1.0, 1)
                currentVehicleState.frontHeight = -1.0
                currentVehicleState.rearHeight = -1.0
            end

            if IsControlJustPressed(0, ALL_WHEELS_DOWN_KEY) then
                SetVehicleSuspensionUpperLimit(vehicle, 1.0, 0)
                SetVehicleSuspensionUpperLimit(vehicle, 1.0, 1)
                currentVehicleState.frontHeight = 1.0
                currentVehicleState.rearHeight = 1.0
            end

            SetVehicleSuspensionUpperLimit(vehicle, currentVehicleState.frontHeight, 0)
            SetVehicleSuspensionUpperLimit(vehicle, currentVehicleState.rearHeight, 1)
        end
    end
end)

RegisterCommand('smartwatch', function()
    TriggerEvent('openSmartwatchMenu', 'lowrider_controls')
end, false)

RegisterNetEvent('smartwatch:summonLowrider')
AddEventHandler('smartwatch:summonLowrider', function()
    ExecuteCommand('spawnlowrider')
    TriggerEvent('chat:addMessage', { args = { 'Your Lowrider is on its way!' } })
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local playerPed = PlayerPedId()
        local vehicle = GetVehiclePedIsIn(playerPed, false)

        if vehicle and IsVehicleModel(vehicle, GetHashKey(LOWRIDER_MODEL_NAME)) then
            if IsControlJustPressed(0, NEON_TOGGLE_KEY) then
                local neonEnabled = not IsVehicleNeonLightEnabled(vehicle, 0)
                for i = 0, 3 do
                    SetVehicleNeonLightEnabled(vehicle, i, neonEnabled)
                end
                if neonEnabled then
                    SetVehicleNeonLightsColour(vehicle, 0, 100, 255)
                end
                TriggerEvent('chat:addMessage', { args = { 'Lowrider neon lights ' .. (neonEnabled and 'ON' or 'OFF') .. '!' } })
            end
        end
    end
end)

AddEventHandler('entityRemoved', function(entity)
    if lowriderStates[entity] then
        lowriderStates[entity] = nil
    end
end)
