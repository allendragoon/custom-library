--————————————————————————————————————————————————————————————————————--

local ClassEditor = {}

--————————————————————————————————————————————————————————————————————--

function ClassEditor:new()
	local newObj = {}
	self.__index = self
	setmetatable(newObj, self)
	return newObj
end

--————————————————————————————————————————————————————————————————————--

function ClassEditor:editTables(classInstance, newData)
	if not classInstance.tables or type(classInstance.tables) ~= "table" then
		warn("Invalid class instance or missing tables.")
		return
	end

	if not newData or type(newData) ~= "table" then
		warn("Invalid data provided.")
		return
 	end

	for key, value in pairs(newData) do
		classInstance.tables[key] = value
	end
end

--————————————————————————————————————————————————————————————————————--

function ClassEditor:addTable(classInstance: string, key: string, value: string)
	if not classInstance.tables or type(classInstance.tables) ~= "table" then
		warn("Invalid class instance or missing tables.") return
	end

	if key == nil or value == nil then warn("Invalid key or value provided.") return end

	classInstance.tables[key] = value
end

--————————————————————————————————————————————————————————————————————--

function ClassEditor:removeTable(classInstance: string, key: string)
	if not classInstance.tables or type(classInstance.tables) ~= "table" then
		warn("Invalid class instance or missing tables.") return
	end

	if key == nil then warn("Invalid key provided.") return end

	classInstance.tables[key] = nil
end

--————————————————————————————————————————————————————————————————————--

return ClassEditor
