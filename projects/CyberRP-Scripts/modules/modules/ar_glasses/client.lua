-- client.lua for AR Glasses system

local ARGlasses = {
    active = false,
    currentMode = "normal",
    cooldown = false
}

function ARGlasses:IsWearing()
    local ped = PlayerPedId()
    local index = GetPedPropIndex(ped, 1)
    local tex = GetPedPropTextureIndex(ped, 1)

    for _, variant in ipairs(Config.ARGlassesVariants) do
        if index == variant.drawable and tex == variant.texture then
            return true
        end
    end
    return false
end

function ARGlasses:HandleInteraction(type)
    if not self:IsWearing() or self.cooldown then return end
    self.cooldown = true
    SetTimeout(500, function() self.cooldown = false end)

    if type == "single_tap" then
        self:ToggleXRay()
    elseif type == "double_tap" then
        self:ToggleInfo()
    elseif type == "hold" then
        self:ThreatScan()
    end
end

function ARGlasses:ToggleXRay()
    if self.currentMode == "xray" then
        SetTimecycleModifier("default")
        local peds = GetGamePool("CPed")
        for _, ped in ipairs(peds) do
            SetEntityRenderScorched(ped, false)
        end
        self.currentMode = "normal"
        TriggerEvent("chat:addMessage", { args = { "[AR Glasses]", "X-Ray Mode Deactivated" } })
    else
        SetTimecycleModifier("xray")
        local peds = GetGamePool("CPed")
        for _, ped in ipairs(peds) do
            SetEntityRenderScorched(ped, true)
        end
        self.currentMode = "xray"
        TriggerEvent("chat:addMessage", { args = { "[AR Glasses]", "X-Ray Mode Activated" } })
    end
end

function ARGlasses:ToggleInfo()
    if self.currentMode == "info" then
        self.currentMode = "normal"
        SendNUIMessage({ action = "hideARInterface" })
        TriggerEvent("chat:addMessage", { args = { "[AR Glasses]", "Info Mode Deactivated" } })
    else
        self.currentMode = "info"
        SendNUIMessage({ action = "showARInterface" })
        TriggerEvent("chat:addMessage", { args = { "[AR Glasses]", "Info Mode Activated" } })
    end
end

function ARGlasses:ThreatScan()
    local peds = GetGamePool("CPed")
    for _, ped in ipairs(peds) do
        if IsPedArmed(ped, 6) or IsPedShooting(ped) then
            SetEntityAlpha(ped, 180, false)
            DrawMarker(1, GetEntityCoords(ped), 0, 0, 0, 0, 0, 0, 0.4, 0.4, 0.4, 255, 0, 0, 120, false, true, 2, false, nil, nil, false)
        end
    end
    TriggerEvent("chat:addMessage", { args = { "[AR Glasses]", "Threat Scan Complete" } })
end

-- Simulate input (example only)
RegisterCommand("ar_single", function() ARGlasses:HandleInteraction("single_tap") end)
RegisterCommand("ar_double", function() ARGlasses:HandleInteraction("double_tap") end)
RegisterCommand("ar_hold", function() ARGlasses:HandleInteraction("hold") end)
