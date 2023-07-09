--————————————————————————————————————————————————————————————————————--

local RemoteEventUtils = {}

--————————————————————————————————————————————————————————————————————--

function RemoteEventUtils:newRemoteEvent(eventName)
	local RemoteEventWrapper = require("remoteeventwrapper")
	return RemoteEventWrapper.new(eventName)
end

--————————————————————————————————————————————————————————————————————--

function RemoteEventUtils:waitForRemoteEvent(eventName)
	return game.ReplicatedStorage:WaitForChild(eventName)
end

--————————————————————————————————————————————————————————————————————--

function RemoteEventUtils:bindFunctionToRemoteEvent(eventName, callback)
	local remoteEvent = game.ReplicatedStorage:FindFirstChild(eventName)
	if remoteEvent and remoteEvent:IsA("RemoteEvent") then
		remoteEvent:ConnectServerEvent(callback)
	end
end

--————————————————————————————————————————————————————————————————————--

function RemoteEventUtils:invokeRemoteEvent(eventName, ...)
	local remoteEvent = game.ReplicatedStorage:FindFirstChild(eventName)
	if remoteEvent and remoteEvent:IsA("RemoteEvent") then
		remoteEvent:FireServerEvent(...)
	end
end

--————————————————————————————————————————————————————————————————————--

function RemoteEventUtils:waitForServerEvent(player, eventName)
	local remoteEvent = game.ReplicatedStorage:WaitForChild(eventName)
	local args = {remoteEvent.event.OnServerEvent:Wait()}
	return unpack(args)
end

--————————————————————————————————————————————————————————————————————--

function RemoteEventUtils:bindClientFunctionToRemoteEvent(eventName, callback)
	local remoteEvent = game.ReplicatedStorage:FindFirstChild(eventName)
	if remoteEvent and remoteEvent:IsA("RemoteEvent") then
		remoteEvent:ConnectClientEvent(callback)
	end
end

--————————————————————————————————————————————————————————————————————--

function RemoteEventUtils:invokeClientFunction(player, eventName, ...)
	local remoteEvent = game.ReplicatedStorage:FindFirstChild(eventName)
	if remoteEvent and remoteEvent:IsA("RemoteEvent") then
		remoteEvent:FireClientEvent(player, ...)
	end
end

--————————————————————————————————————————————————————————————————————--

return RemoteEventUtils
