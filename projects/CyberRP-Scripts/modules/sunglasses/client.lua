-- client.lua for sunglasses module

RegisterCommand("wear_glasses", function(source, args)
    local ped = PlayerPedId()
    local style = args[1] or "blackout"
    local config = Config.Sunglasses[style]

    if config then
        SetPedPropIndex(ped, 1, config.drawable, config.texture, 2)
    else
        print("Sunglass style not found.")
    end
end)
