-- client.lua for Shoes Module (CyberRP Accessory Suite)

local flexEnabled = false

RegisterCommand("flexkicks", function()
    local ped = PlayerPedId()
    local model = GetEntityModel(ped)

    if flexEnabled then
        TriggerEvent("chat:addMessage", {
            args = {"🛑 Sneaker flex disabled."}
        })
        ResetPedMovementClipset(ped, 0.25)
        flexEnabled = false
        return
    end

    -- Walk style preview (e.g., for premium kicks)
    RequestAnimSet("move_m@swagger")
    while not HasAnimSetLoaded("move_m@swagger") do
        Wait(10)
    end
    SetPedMovementClipset(ped, "move_m@swagger", 0.25)

    TriggerEvent("chat:addMessage", {
        args = {"✅ Premium sneaker flex enabled."}
    })
    flexEnabled = true
end)

-- Play unique shoe sound on footstep
CreateThread(function()
    while true do
        Wait(0)
        local ped = PlayerPedId()
        if IsPedWalking(ped) and flexEnabled then
            local x, y, z = table.unpack(GetEntityCoords(ped))
            -- Replace with custom soundset if available
            PlaySoundFromCoord(-1, "TENNIS_FOOTSTEP", x, y, z, "DLC_HEIST_HACKING_SNAKE_SOUNDS", false, 0, false)
            Wait(450) -- Footstep spacing delay
        end
    end
end)
