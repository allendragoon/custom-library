--————————————————————————————————————————————————————————————————————--

local class = {}
class.__index = class

--————————————————————————————————————————————————————————————————————--

function class.new(data: string)
	if (data ~= nil) and (type(data) ~= 'table') and not (data) then warn("Data must be a table") end
	if data.tables and type(data.tables) == "table" then
		local self = { class = tostring(data.tables) }

		return setmetatable(self, class)
	end
end

--————————————————————————————————————————————————————————————————————--

function class:print_tables(data: string)
	if not (data) then return warn("No data found.") end
	print(data)
end

--————————————————————————————————————————————————————————————————————--

return class
