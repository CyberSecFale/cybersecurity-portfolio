-- client.lua for Backpacks Module

RegisterCommand("carrypack", function(source, args, rawCommand)
    local backpackType = args[1] or "default"
    local playerPed = PlayerPedId()
    local config = Config.Backpacks[backpackType]

    if not config then
        TriggerEvent("chat:addMessage", {
            args = { "^1[Backpack]", "Backpack type not found: " .. backpackType }
        })
        return
    end

    -- Apply the backpack to the character (component 5 = bags/shoulders)
    SetPedComponentVariation(playerPed, 5, config.drawable, config.texture, config.palette or 0)

    -- Notify player
    TriggerEvent("chat:addMessage", {
        args = { "^2[Backpack]", "Equipped: " .. backpackType }
    })

    -- Future premium lock logic can go here
    -- if config.premium then
    --     -- Add role or permission check
    -- end
end, false)
