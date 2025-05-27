-- client/spawn_commands.lua

local function SpawnCharacterModel(model)
  local playerPed = PlayerPedId()
  local modelHash = GetHashKey(model)
  RequestModel(modelHash)
  while not HasModelLoaded(modelHash) do Wait(0) end
  SetPlayerModel(PlayerId(), modelHash)
  SetModelAsNoLongerNeeded(modelHash)
end

RegisterCommand("spawnlola", function() SpawnCharacterModel("mp_f_freemode_01") end)
RegisterCommand("spawnluis", function() SpawnCharacterModel("mp_m_freemode_01") end)
RegisterCommand("spawnlitloo", function() SpawnCharacterModel("a_m_y_skater_01") end)
RegisterCommand("spawnlitg", function() SpawnCharacterModel("ig_floyd") end) -- or custom
RegisterCommand("spawncoco", function()
  local hash = GetHashKey("a_c_rottweiler")
  RequestModel(hash)
  while not HasModelLoaded(hash) do Wait(0) end
  local coords = GetEntityCoords(PlayerPedId())
  local pet = CreatePed(28, hash, coords.x + 2, coords.y, coords.z, 0.0, true, false)
  SetEntityAsMissionEntity(pet, true, true)
end)

RegisterCommand("spawnimpala", function()
  local hash = GetHashKey("impala64")
  RequestModel(hash)
  while not HasModelLoaded(hash) do Wait(0) end
  local coords = GetEntityCoords(PlayerPedId())
  local vehicle = CreateVehicle(hash, coords.x + 5, coords.y, coords.z, 0.0, true, false)
  SetVehicleNumberPlateText(vehicle, "LUIS64")
end)
