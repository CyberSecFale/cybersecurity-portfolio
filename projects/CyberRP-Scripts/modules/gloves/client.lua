-- client.lua for Gloves Module (CyberRP Accessory Suite)

local gloveEnabled = false

RegisterCommand("glovemode", function()
    local ped = PlayerPedId()
    local model = GetEntityModel(ped)

    -- Pull glove type from command argument or use default
    local args = GetArgs()
    local selected = args[1] or "default"
    local config = Config.Gloves[selected]

    if not config then
        TriggerEvent("chat:addMessage", {
            args = { "🧤 GloveMode", "Invalid glove selection." }
        })
        return
    end

    -- Apply gloves as a component (usually index 3 or 5 depending on MP model)
    local componentIndex = 3 -- torso
    SetPedComponentVariation(ped, componentIndex, config.drawable, config.texture, config.palette or 0)

    -- Feedback
    TriggerEvent("chat:addMessage", {
        args = { "🧤 GloveMode", "Equipped glove variant: " .. selected }
    })

    gloveEnabled = true
end)

-- Utility function to split args
function GetArgs()
    local args = {}
    local rawText = GetOnscreenKeyboardResult()
    local msg = string.lower(tostring(GetCurrentResourceName()))
    if msg then
        for word in string.gmatch(msg, "%S+") do
            table.insert(args, word)
        end
    end
    return args
end
