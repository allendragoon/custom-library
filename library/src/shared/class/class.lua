--————————————————————————————————————————————————————————————————————--

local class = {}
class.__index = class

--————————————————————————————————————————————————————————————————————--

function class.new(data)
	if (data ~= nil) and (type(data) ~= 'table') then warn("Data must be a table") end
	if data.tables and type(data.tables) == "table" then
		local self = { class = data.tables }

		return setmetatable(self, class)
	end
end

--————————————————————————————————————————————————————————————————————--

function class:print_tables(data)
	if not (data) then return warn("No data found.") end
	print(data)
end

--————————————————————————————————————————————————————————————————————--

return class
