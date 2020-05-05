os.loadAPI('/lib/debug')

local deviceTypes = {"ic2:mfsu", "ic2:mfe", "ic2:batbox"}

local allDevices = {}

for _, deviceType in pairs(deviceTypes) do
  for __, device in pairs({peripheral.find(deviceType)}) do
    table.insert(allDevices, device)
  end
end

function getUnitsCount()
  return #allDevices
end

function getTotalEnergy()
  local result = 0
  for _, device in pairs(allDevices) do
    result = result + device.getEUStored()
  end
  return result
end

function getTotalCapacity()
  local result = 0
  for _, device in pairs(allDevices) do
    result = result + device.getEUCapacity()
  end
  return result
end
