os.loadAPI('/lib/debug')

local deviceTypes = {"ic2:nuclear reactor", "ic2:reactor chamber"}

allDevices = {}

for _, deviceType in pairs(deviceTypes) do
  for __, device in pairs({peripheral.find(deviceType)}) do
    table.insert(allallDevicesEntities, device)
  end
end

function getAllDevices()
  return allDevices
end

function getDevicesCount()
  return #allDevices
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
