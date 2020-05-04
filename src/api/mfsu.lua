os.loadAPI('/lib/debug')

local entityID = "ic2:mfsu"

allEntities = { peripheral.find(entityID) }

function getUnitsCount()
	return #allEntities
end

function getTotalEnergy()
	local result = 0
	for _,v in pairs(allEntities) do
		result = result + v.getEUStored()
	end
	return result
end

function getTotalCapacity()
	local result = 0
	for _, v in pairs(allEntities) do
		if v.getCapacity ~= nil then 
			result = result + v.getEUCapacity()
		end
	end
	return result
end