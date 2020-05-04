os.loadAPI('/lib/debug')

local entityIDs = {"ic2:nuclear reactor", "ic2:reactor chamber"}

local allEntities = {}

for _,_v in pairs(entityIDs) do
	for __,_p in pairs(_v) do
		table.insert(allEntities,_p)
	end
end

function getAllEntities(){
	return allEntities
}

function getUnitsCount()
  return #allEntities
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
