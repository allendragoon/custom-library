--————————————————————————————————————————————————————————————————————--

local input = {}

--————————————————————————————————————————————————————————————————————--

function input.new(name)
	local instance = {
		name = name,
		logs = {},
	}

	setmetatable(instance, input)
	input.__index = input
	return instance
end

--————————————————————————————————————————————————————————————————————--

function input:log(...)
	local message = table.concat({...}, " ")
	table.insert(self.logs, message)
	print("[LOG] (" .. self.name .. "):", message)
end

--————————————————————————————————————————————————————————————————————--

function input:warning(...)
	local message = table.concat({...}, " ")
	table.insert(self.logs, message)
	print("[WARNING] (" .. self.name .. "):", message)
end

--————————————————————————————————————————————————————————————————————--

function input:error(...)
	local message = table.concat({...}, " ")
	table.insert(self.logs, message)
	print("[ERROR] (" .. self.name .. "):", message)
end

--————————————————————————————————————————————————————————————————————--

function input:getLogs()
	return self.logs
end

--————————————————————————————————————————————————————————————————————--

function input:input(prompt)
	io.write(prompt .. ": ")
	io.flush()
	local input = io.read()
	return input
end

--————————————————————————————————————————————————————————————————————--

return input
