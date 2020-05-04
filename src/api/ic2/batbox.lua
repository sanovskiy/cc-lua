os.loadAPI('/lib/debug')

local entityIDs = {"ic2:mfsu", "ic2:mfe", "ic2:batbox"}

local allEntities = {}

for _, _v in pairs(entityIDs) do
  for __, _p in pairs(peripheral.find(_v) do
    table.insert(allEntities, _p)
  end
end

function getUnitsCount()
  return #allEntities
end

function getTotalEnergy()
  local result = 0
  for _, v in pairs(allEntities) do
    result = result + v.getEUStored()
  end
  return result
end

function getTotalCapacity()
  local result = 0
  for _, v in pairs(allEntities) do
    result = result + v.getEUCapacity()
  end
  return result
end
