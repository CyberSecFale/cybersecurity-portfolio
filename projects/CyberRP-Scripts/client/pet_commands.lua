-- client/pet_commands.lua

-- /coco_sit command
RegisterCommand("coco_sit", function()
  local playerCoords = GetEntityCoords(PlayerPedId())
  local hash = GetHashKey("a_c_bullypit")
  local pet = GetClosestPed(playerCoords.x, playerCoords.y, playerCoords.z, 10.0, true, false, false, false, hash)

  if pet and DoesEntityExist(pet) then
    TaskStartScenarioInPlace(pet, "WORLD_DOG_SITTING", 0, true)
    TriggerEvent('chat:addMessage', {
      color = {255, 255, 255},
      args = {"Coco", "sits down like a good boy."}
    })
  else
    TriggerEvent('chat:addMessage', {
      color = {255, 0, 0},
      args = {"Coco", "isn’t close enough to hear your command."}
    })
  end
end)

-- Double-tap trigger for growl
local lastTap = 0
local tapWindow = 300 -- milliseconds

Citizen.CreateThread(function()
  while true do
    Wait(0)
    if IsControlJustReleased(0, 38) then -- "E" key
      local now = GetGameTimer()
      if now - lastTap < tapWindow then
        TriggerCocoGrowl()
        lastTap = 0
      else
        lastTap = now
      end
    end
  end
end)

function TriggerCocoGrowl()
  local playerCoords = GetEntityCoords(PlayerPedId())
  local hash = GetHashKey("a_c_bullypit")
  local pet = GetClosestPed(playerCoords.x, playerCoords.y, playerCoords.z, 10.0, true, false, false, false, hash)

  if pet and DoesEntityExist(pet) then
    TaskStartScenarioInPlace(pet, "WORLD_DOG_BARKING", 0, true)
    TriggerEvent('chat:addMessage', {
      color = {255, 150, 0},
      args = {"Coco", "*Grrrrrrr...*"}
    })
  else
    TriggerEvent('chat:addMessage', {
      color = {255, 0, 0},
      args = {"Coco", "isn't nearby to growl."}
    })
  end
end
