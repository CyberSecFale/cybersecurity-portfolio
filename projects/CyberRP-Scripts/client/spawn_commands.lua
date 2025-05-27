-- client/spawn_commands.lua

-- Generic ped spawner with animation
function SpawnCharacterWithAnimation(model, scenario)
  local modelHash = GetHashKey(model)
  RequestModel(modelHash)
  while not HasModelLoaded(modelHash) do Wait(0) end

  local coords = GetEntityCoords(PlayerPedId())
  local ped = CreatePed(4, modelHash, coords.x + 1.5, coords.y, coords.z, 0.0, true, false)
  SetEntityAsMissionEntity(ped, true, true)

  if scenario then
    TaskStartScenarioInPlace(ped, scenario, 0, true)
  end
end

-- Register character commands
RegisterCommand("spawn_lola", function()
  SpawnCharacterWithAnimation("mp_f_freemode_01", "WORLD_HUMAN_STAND_IMPATIENT")
end)

RegisterCommand("spawn_luis", function()
  SpawnCharacterWithAnimation("mp_m_freemode_01", "WORLD_HUMAN_MUSCLE_FLEX")
end)

RegisterCommand("spawn_litloo", function()
  SpawnCharacterWithAnimation("a_m_y_skater_01", "WORLD_HUMAN_HANG_OUT_STREET")
end)

RegisterCommand("spawn_litg", function()
  SpawnCharacterWithAnimation("ig_floyd", "WORLD_HUMAN_DRINKING")
end)

RegisterCommand("spawn_coco", function()
  local hash = GetHashKey("a_c_rottweiler")
  RequestModel(hash)
  while not HasModelLoaded(hash) do Wait(0) end

  local coords = GetEntityCoords(PlayerPedId())
  local pet = CreatePed(28, hash, coords.x + 2.0, coords.y, coords.z, 0.0, true, false)
  SetEntityAsMissionEntity(pet, true, true)
  TaskStartScenarioInPlace(pet, "WORLD_DOG_SITTING", 0, true)
end)

RegisterCommand("spawn_impala", function()
  local hash = GetHashKey("impala64")
  RequestModel(hash)
  while not HasModelLoaded(hash) do Wait(0) end

  local coords = GetEntityCoords(PlayerPedId())
  local vehicle = CreateVehicle(hash, coords.x + 5, coords.y, coords.z, 0.0, true, false)
  SetVehicleNumberPlateText(vehicle, "LUIS64")
end)

-- 🟢 Welcome Message on Load
Citizen.CreateThread(function()
  Wait(2000) -- brief delay to avoid overlap
  TriggerEvent("chat:addMessage", {
    color = {0, 255, 125},
    multiline = true,
    args = {
      "🟢 CyberWolf001",
      "Welcome to La Familia RP — built by Bobby [Abbiu] F∀LERO of FaleNetwork.com"
    }
  })
end)

