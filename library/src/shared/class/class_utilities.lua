--————————————————————————————————————————————————————————————————————--

local ClassUtilities = {}

--————————————————————————————————————————————————————————————————————--

function ClassUtilities:new()
	local obj = {}
	setmetatable(obj, self)
	self.__index = self
	return obj
end

--————————————————————————————————————————————————————————————————————--

function ClassUtilities:concatenateTables(tblList)
	local result = {}
	for _, tbl in ipairs(tblList) do
		for _, value in ipairs(tbl) do
			table.insert(result, value)
		end
	end
	return result
end

--————————————————————————————————————————————————————————————————————--

function ClassUtilities:sumTableValues(tbl)
	local sum = 0
	for _, value in ipairs(tbl) do
		if type(value) == "number" then
			sum = sum + value
		end
	end
	return sum
end

--————————————————————————————————————————————————————————————————————--

return ClassUtilities
