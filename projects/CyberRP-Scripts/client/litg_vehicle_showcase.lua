RegisterCommand("litg_vehicle_showcase", function()
    local playerPed = PlayerPedId()
    local coords = GetEntityCoords(playerPed)
    local heading = GetEntityHeading(playerPed)
    local model = GetHashKey("tornado")

    -- Setup cinematic camera
    local cam = CreateCam("DEFAULT_SCRIPTED_CAMERA", true)
    SetCamActive(cam, true)
    RenderScriptCams(true, true, 1000, true, true)

    -- Fade out screen
    DoScreenFadeOut(1000)
    Wait(1000)

    RequestModel(model)
    while not HasModelLoaded(model) do Wait(0) end

    -- Spawn Fleetwood slightly offset for cinematic space
    local vehicle = CreateVehicle(model, coords.x + 5.0, coords.y, coords.z, heading, true, false)

    -- Fleetwood mod details
    SetVehicleColours(vehicle, 0, 88) -- Black / Gold trim
    SetVehicleModKit(vehicle, 0)
    SetVehicleMod(vehicle, 23, 1, false) -- Wheels: Classic whitewalls
    SetVehicleMod(vehicle, 0, 2, false) -- Spoiler
    SetVehicleMod(vehicle, 1, 1, false) -- Front Bumper
    SetVehicleMod(vehicle, 2, 1, false) -- Rear Bumper
    SetVehicleMod(vehicle, 10, 1, false) -- Roof
    SetVehicleNumberPlateText(vehicle, "LIT G")
    ToggleVehicleMod(vehicle, 22, true) -- Xenon

    -- Neon underglow setup
    for i = 0, 3 do
        SetVehicleNeonLightEnabled(vehicle, i, true)
    end
    SetVehicleNeonLightsColour(vehicle, 255, 215, 0) -- Gold glow

    -- Fade in scene
    Wait(500)
    DoScreenFadeIn(1000)

    -- Set custom lowrider radio station
    SetVehRadioStation(vehicle, "LOWDOWN")
    SetRadioToStationName("LOWDOWN")

    -- Cinematic camera sweep around car
    local vehCoords = GetEntityCoords(vehicle)
    for i = 1, 180 do
        local angle = i * 2.0
        local radius = 5.0
        local camX = vehCoords.x + radius * math.cos(math.rad(angle))
        local camY = vehCoords.y + radius * math.sin(math.rad(angle))
        SetCamCoord(cam, camX, camY, vehCoords.z + 1.0)
        PointCamAtEntity(cam, vehicle, 0.0, 0.0, 0.0, true)
        Wait(10)
    end

    -- Wrap up cinematic and warp player in
    SetCamActive(cam, false)
    RenderScriptCams(false, true, 1000, true, true)
    DestroyCam(cam, true)
    TaskWarpPedIntoVehicle(playerPed, vehicle, -1)

    -- RP message in chat
    TriggerEvent("chat:addMessage", {
        color = {255, 215, 0},
        args = {"Lit' G's Cadillac", "Vintage class. Low and loud. Welcome to the showcase."}
    })
end)
