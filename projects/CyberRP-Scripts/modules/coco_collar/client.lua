-- coco_power_collar.lua
local Config = require("modules.coco_collar.config")

local Coco = {
    hasCollar = false,
    isPowered = false,
    transitioning = false,
    currentScale = Config.Collar.BaseScale,
    particles = {}
}

-- Utility
local function DebugPrint(...)
    if Config.Debug then
        print("[CocoPowerCollar]", ...)
    end
end

local function LoadAnimDict(dict)
    if not HasAnimDictLoaded(dict) then
        RequestAnimDict(dict)
        local timeout = 0
        while not HasAnimDictLoaded(dict) and timeout < 500 do
            Citizen.Wait(10)
            timeout = timeout + 1
        end
    end
    return HasAnimDictLoaded(dict)
end

local function PlaySound(soundConfig, entity)
    if not soundConfig then return false end
    if entity then
        PlaySoundFromEntity(-1, soundConfig.Name, entity, soundConfig.Dict, false, 0)
    else
        PlaySoundFrontend(-1, soundConfig.Name, soundConfig.Dict, true)
    end
    return true
end

-- Equip collar command
RegisterCommand(Config.Commands.EquipCollar, function()
    local ped = PlayerPedId()
    local model = GetEntityModel(ped)

    for _, supported in ipairs(Config.Collar.ModelsSupported) do
        if GetHashKey(supported) == model then
            Coco.hasCollar = true
            TriggerEvent('chat:addMessage', {
                color = {50, 255, 50},
                args = {"Coco's Collar", "Collar equipped successfully!"}
            })
            return
        end
    end

    TriggerEvent('chat:addMessage', {
        color = {255, 50, 50},
        args = {"Coco's Collar", "This collar only works with supported dog breeds."}
    })
end)

-- Toggle power command
RegisterCommand(Config.Commands.TogglePower, function()
    local ped = PlayerPedId()
    local model = GetEntityModel(ped)

    -- Validate model
    local supported = false
    for _, m in ipairs(Config.Collar.ModelsSupported) do
        if GetHashKey(m) == model then supported = true break end
    end

    if not supported then
        TriggerEvent('chat:addMessage', {
            color = {255, 50, 50},
            args = {"Coco's Collar", "This power collar only works on specific dog breeds!"}
        })
        return
    end

    if not Coco.hasCollar then
        TriggerEvent('chat:addMessage', {
            color = {255, 100, 100},
            args = {"Coco's Collar", "Power collar is not equipped! Use /" .. Config.Commands.EquipCollar .. " first."}
        })
        return
    end

    if Coco.transitioning then
        DebugPrint("Already transforming.")
        return
    end

    Coco.transitioning = true
    local targetScale = Coco.isPowered and Config.Collar.BaseScale or Config.Collar.PowerScale
    local sound = Coco.isPowered and Config.Sounds.PowerDown or Config.Sounds.PowerUp
    local anim = Coco.isPowered and Config.Animations.PowerDown or Config.Animations.PowerUp
    local idleAnim = not Coco.isPowered and Config.Animations.PowerIdle or nil

    if anim and LoadAnimDict(anim.Dict) then
        TaskPlayAnim(ped, anim.Dict, anim.Name, anim.BlendInSpeed, anim.BlendOutSpeed, -1, anim.Flag, 0, false, false, false)
        DebugPrint("Playing animation: " .. anim.Name)
    end

    if not Coco.isPowered then ShakeGameplayCam("SMALL_EXPLOSION_SHAKE", 0.3) end

    if not PlaySound(sound, ped) then
        DebugPrint("Sound fallback triggered.")
        PlaySoundFrontend(-1, "Beep_Red", "DLC_HEIST_HACKING_SNAKE_SOUNDS", true)
    end

    if Config.Effects.EnableParticles then
        for _, p in ipairs(Coco.particles) do
            if DoesParticleFxLoopedExist(p) then StopParticleFxLooped(p, false) end
        end
        Coco.particles = {}

        RequestNamedPtfxAsset(Config.Effects.ParticleDict)
        while not HasNamedPtfxAssetLoaded(Config.Effects.ParticleDict) do Citizen.Wait(10) end
        UseParticleFxAssetNextCall(Config.Effects.ParticleDict)

        local offsets = {
            {x = 0.3, y = 0.0, z = 0.8},
            {x = -0.3, y = 0.0, z = 0.8}
        }

        for _, offset in pairs(offsets) do
            local fx = StartParticleFxLoopedOnEntity(Config.Effects.ParticleName, ped, offset.x, offset.y, offset.z, 0.0, 0.0, 0.0, Config.Effects.ParticleScale, false, false, false)
            table.insert(Coco.particles, fx)
        end
    end

    -- Simulated transformation delay
    Citizen.SetTimeout(Config.Animations.PowerUp.Duration or 1500, function()
        SetEntityScale(ped, targetScale, targetScale, targetScale)
        if idleAnim and LoadAnimDict(idleAnim.Dict) then
            TaskPlayAnim(ped, idleAnim.Dict, idleAnim.Name, idleAnim.BlendInSpeed, idleAnim.BlendOutSpeed, -1, idleAnim.Flag, 0, false, false, false)
        end
        Coco.isPowered = not Coco.isPowered
        Coco.transitioning = false
    end)
end)
