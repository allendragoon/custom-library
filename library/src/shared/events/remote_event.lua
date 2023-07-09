--————————————————————————————————————————————————————————————————————--

local RemoteEventWrapper = {}
RemoteEventWrapper.__index = RemoteEventWrapper

--————————————————————————————————————————————————————————————————————--

function RemoteEventWrapper.new(eventName, parent)
	local self = { event = Instance.new("RemoteEvent") }
	
	self.event.Name = eventName
	self.event.Parent = parent
	return setmetatable(self, RemoteEventWrapper)
end

--————————————————————————————————————————————————————————————————————--

function RemoteEventWrapper:ConnectServerEvent(callback)
	self.event.OnServerEvent:Connect(function(player, ...)
		callback(player, ...)
	end)
end

--————————————————————————————————————————————————————————————————————--

function RemoteEventWrapper:ConnectClientEvent(callback)
	self.event.OnClientEvent:Connect(function(...)
		callback(...)
	end)
end

--————————————————————————————————————————————————————————————————————--

function RemoteEventWrapper:FireServerEvent(player, ...)
	self.event:FireServer(player, ...)
end

--————————————————————————————————————————————————————————————————————--

function RemoteEventWrapper:FireClientEvent(player, ...)
	self.event:FireClient(player, ...)
end

--————————————————————————————————————————————————————————————————————--

function RemoteEventWrapper:FireAllClientEvent(player, ...)
	self.event:FireAllClients(player, ...)
end

--————————————————————————————————————————————————————————————————————--

return RemoteEventWrapper
