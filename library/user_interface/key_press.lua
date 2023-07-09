--————————————————————————————————————————————————————————————————————--

local KeybindHandler = {}
KeybindHandler.__index = KeybindHandler

--————————————————————————————————————————————————————————————————————--

function KeybindHandler.new(remoteFunction)
	local self = setmetatable({}, KeybindHandler)

	self.keybinds = {}

	game:GetService("UserInputService").InputBegan:Connect(function(input)
		self:HandleKeyPress(input)
	end)

	self.remoteFunction = remoteFunction

	return self
end

--————————————————————————————————————————————————————————————————————--

function KeybindHandler:RegisterKeybind(keyCode, callback)
	local keybind = {
		keyCode = keyCode,
		callback = callback
	}

	table.insert(self.keybinds, keybind)
end

--————————————————————————————————————————————————————————————————————--

function KeybindHandler:HandleKeyPress(input)
	for _, keybind in ipairs(self.keybinds) do
		if input.KeyCode == keybind.keyCode then
			local success, error = pcall(keybind.callback)
			if not success then
				warn("Error occurred while executing keybind callback:")
				warn(error)
			end
			break
		end
	end
end

--————————————————————————————————————————————————————————————————————--

return KeybindHandler
