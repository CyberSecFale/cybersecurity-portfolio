-- client.lua for bandanna module

RegisterCommand("wear_bandanna", function(source, args)
    local ped = PlayerPedId()
    local color = args[1] or "blackwhite"
    local config = Config.Bandannas[color]

    if config then
        SetPedPropIndex(ped, 0, config.drawable, config.texture, 2)
    else
        print("Bandanna color not found.")
    end
end)
