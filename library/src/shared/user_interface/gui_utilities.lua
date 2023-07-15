--————————————————————————————————————————————————————————————————————--

local gui = {}
local gui_mt = { __index = gui }

--————————————————————————————————————————————————————————————————————--

function gui:output(instance: string, name: string, parent: string, others: string)
	if not (instance and name and parent) then return warn("Missing a string.") end
	print(instance, name, parent, others)
end

--————————————————————————————————————————————————————————————————————--

function gui:generate_folder(name: string, parent: Instance)
	if not ( name ) and (parent) then return warn("Missing a string.") end

	local instance = Instance.new("Folder")
	local folder = {
		Name = name or "Unnamed",
		Parent = parent or nil,
	}

	setmetatable(folder, gui_mt)
	instance.Name = folder.Name
	instance.Parent = folder.Parent
	gui:output(instance, name, parent, folder)
	return (folder)
end

--————————————————————————————————————————————————————————————————————--

function gui:generate_screen_gui(name: string, parent: Instance)
	if not ( name ) and (parent) then return warn("Missing a string.") end

	local instance = Instance.new("ScreenGui")
	local screen_gui = {
		Name = name or "Unnamed",
		Parent = parent or nil,
	}

	setmetatable(screen_gui, gui_mt)
	instance.Name = screen_gui.Name
	instance.Parent = screen_gui.Parent
	gui:output(instance, name, parent, screen_gui)
	return (screen_gui)
end

--————————————————————————————————————————————————————————————————————--

function gui:generate_image_label(name: string, imageId: string, parent: Instance)
	if not ( name ) and (parent) then return warn("Missing a string.") end

	local instance = Instance.new("ImageLabel")
	local image_label = {
		Name = name or "Unnamed",
		Image = imageId,
		Parent = parent or nil,
	}

	setmetatable(image_label, gui_mt)
	instance.Name = image_label.Name
	instance.Parent = image_label.Parent
	instance.Image = image_label.Image
	gui:output(instance, name, parent, imageId)
	return (image_label)
end

--————————————————————————————————————————————————————————————————————--

function gui:generate_frame(name: string, parent: Instance)
	if not ( name ) and (parent) then return warn("Missing a string.") end

	local instance = Instance.new("Frame")
	local frame = {
		Name = name or "Unnamed",
		Parent = parent or nil,
	}

	setmetatable(frame, gui_mt)
	instance.Name = frame.Name
	instance.Parent = frame.Parent
	gui:output(instance, name, parent, frame)
	return (frame)
end

--————————————————————————————————————————————————————————————————————--

function gui:generate_text_box(name: string, parent: Instance)
	if not ( name ) and (parent) then return warn("Missing a string.") end

	local instance = Instance.new("TextBox")
	local text_box_gui = {
		Name = name or "Unnamed",
		Parent = parent or nil,
	}

	setmetatable(text_box_gui, gui_mt)
	instance.Name = text_box_gui.Name
	instance.Parent = text_box_gui.Parent
	gui:output(instance, name, parent, text_box_gui)
	return (text_box_gui)
end

--————————————————————————————————————————————————————————————————————--

function gui:generate_text_label(name: string, parent: Instance)
	if not ( name ) and (parent) then return warn("Missing a string.") end

	local instance = Instance.new("TextLabel")
	local text_label = {
		Name = name or "Unnamed",
		Parent = parent or nil,
	}

	setmetatable(text_label, gui_mt)
	instance.Name = text_label.Name
	instance.Parent = text_label.Parent
	gui:output(instance, name, parent, text_label)
	return (text_label)
end

function gui:generate_text_button(name: string, parent: Instance)
	if not ( name ) and (parent) then return warn("Missing a string.") end

	local instance = Instance.new("TextButton")
	local text_button = {
		Name = name or "Unnamed",
		Parent = parent or nil,
	}

	setmetatable(text_button, gui_mt)
	instance.Name = text_button.Name
	instance.Parent = text_button.Parent
	gui:output(instance, name, parent, text_button)
	return (text_button)
end

--————————————————————————————————————————————————————————————————————--

function gui:generate_image_button(name: string, imageId: string, parent: Instance)
	if not ( name ) and ( imageId ) and (parent) then return warn("Missing a string.") end

	local instance = Instance.new("ImageButton")
	local image_button = {
		Name = name or "Unnamed",
		Image = imageId,
		Parent = parent or nil,
	}

	setmetatable(image_button, gui_mt)
	instance.Name = image_button.Name
	instance.Parent = image_button.Parent
	instance.Image = image_button.Image
	gui:output(instance, name, parent, imageId, image_button)
	return (image_button)
end

--————————————————————————————————————————————————————————————————————--

function gui:generate_text_label_button(name: string, parent: Instance)
	if not ( name ) and (parent) then return warn("Missing a string.") end

	local instance = Instance.new("TextButton")
	local text_label_button = {
		Name = name or "Unnamed",
		Parent = parent or nil,
	}

	setmetatable(text_label_button, gui_mt)
	instance.Name = text_label_button.Name
	instance.Parent = text_label_button.Parent
	gui:output(instance, name, parent, text_label_button)
	return (text_label_button)
end

--————————————————————————————————————————————————————————————————————--

function gui:generate_scroll_frame(name: string, parent: Instance)
	if not ( name ) and (parent) then return warn("Missing a string.") end

	local instance = Instance.new("ScrollingFrame")
	local scroll_frame = {
		Name = name or "Unnamed",
		Parent = parent or nil,
	}

	setmetatable(scroll_frame, gui_mt)
	instance.Name = scroll_frame.Name
	instance.Parent = scroll_frame.Parent
	gui:output(instance, name, parent, scroll_frame)
	return (scroll_frame)
end

--————————————————————————————————————————————————————————————————————--

return gui
