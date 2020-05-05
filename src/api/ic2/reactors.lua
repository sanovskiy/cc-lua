os.loadAPI('/lib/debug')

local entityIDs = {"ic2:nuclear reactor", "ic2:reactor chamber"}

local allEntities = {}

for _, deviceName in pairs(entityIDs) do
  for __, device in pairs({peripheral.find(deviceName)}) do
    table.insert(allEntities, device)
  end
end

function getAllEntities()
  return allEntities
end

function getUnitsCount()
  return #allEntities
end

function hasEmptySlots(entity)
  
end

--function getTotalEnergy()
--  local result = 0
--  for _, v in pairs(allEntities) do
--    result = result + v.getEUStored()
--  end
--  return result
--end

--function getTotalCapacity()
--  local result = 0
--  for _, v in pairs(allEntities) do
--    result = result + v.getEUCapacity()
--  end
--  return result
--end
