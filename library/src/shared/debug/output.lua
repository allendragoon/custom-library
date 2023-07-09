--————————————————————————————————————————————————————————————————————--

local output = {}

--————————————————————————————————————————————————————————————————————--

function output.new(name)
	local instance = {
		name = name,
		logs = {},
	}

	setmetatable(instance, output)
	output.__index = output
	return instance
end

--————————————————————————————————————————————————————————————————————--

function output:log(...)
	local message = table.concat({...}, " ")
	table.insert(self.logs, message)
	print("[LOG] (" .. self.name .. "):", message)
end

--————————————————————————————————————————————————————————————————————--

function output:warning(...)
	local message = table.concat({...}, " ")
	table.insert(self.logs, message)
	print("[WARNING] (" .. self.name .. "):", message)
end

--————————————————————————————————————————————————————————————————————--

function output:error(...)
	local message = table.concat({...}, " ")
	table.insert(self.logs, message)
	print("[ERROR] (" .. self.name .. "):", message)
end

--————————————————————————————————————————————————————————————————————--

function output:getLogs()
	return self.logs
end

--————————————————————————————————————————————————————————————————————--

return output
