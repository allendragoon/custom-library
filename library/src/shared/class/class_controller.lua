--————————————————————————————————————————————————————————————————————--

local class_controller = {}
class_controller.__index = class_controller

--————————————————————————————————————————————————————————————————————--

function class_controller.new(data: string)
	if not (data) then return warn("Please provided a string.") end

	local self = { tables = {} }
	
	table.insert(self.tables, data)
	return setmetatable(self, class_controller)
end

--————————————————————————————————————————————————————————————————————--

function class_controller:append_class(data: string)
	if not (data) then return warn("No data found.") end
	table.insert(self.tables, data)
end

--————————————————————————————————————————————————————————————————————--

function class_controller:get_class()
	return self.tables
end

--————————————————————————————————————————————————————————————————————--

function class_controller:unpack_class()
	return table.unpack(self.tables)
end

--————————————————————————————————————————————————————————————————————--

return class_controller
