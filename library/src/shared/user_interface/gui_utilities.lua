--————————————————————————————————————————————————————————————————————--

local gui = {}
local gui_mt = { __index = gui }

--————————————————————————————————————————————————————————————————————--

function gui:output(instance, name, parent, others)
	if not (instance and name and parent) then return error(" ") end
	print(instance, name, parent, others)
end

--————————————————————————————————————————————————————————————————————--

function gui:generate_folder(name, parent)
	local instance = Instance.new("Folder")
	local folder = {
		Name = name or "Unnamed",
		Parent = parent or nil,
	}

	setmetatable(folder, gui_mt)
	instance.Name = folder.Name
	instance.Parent = folder.Parent
	gui:output(instance, name, parent)
	return folder
end

--————————————————————————————————————————————————————————————————————--

function gui:generate_screen_gui(name, parent)
	local instance = Instance.new("ScreenGui")
	local screen_gui = {
		Name = name or "Unnamed",
		Parent = parent or nil,
	}

	setmetatable(screen_gui, gui_mt)
	instance.Name = screen_gui.Name
	instance.Parent = screen_gui.Parent
	gui:output(instance, name, parent)
	return screen_gui
end

--————————————————————————————————————————————————————————————————————--

function gui:generate_image_label(name, imageId, parent)
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
	return image_label
end

--————————————————————————————————————————————————————————————————————--

function gui:generate_frame(name, parent)
	local instance = Instance.new("Frame")
	local frame = {
		Name = name or "Unnamed",
		Parent = parent or nil,
	}

	setmetatable(frame, gui_mt)
	instance.Name = frame.Name
	instance.Parent = frame.Parent
	gui:output(instance, name, parent)
	return frame
end

--————————————————————————————————————————————————————————————————————--

function gui:generate_text_box(name, parent)
	local instance = Instance.new("TextBox")
	local text_box_gui = {
		Name = name or "Unnamed",
		Parent = parent or nil,
	}

	setmetatable(text_box_gui, gui_mt)
	instance.Name = text_box_gui.Name
	instance.Parent = text_box_gui.Parent
	gui:output(instance, name, parent)
	return text_box_gui
end

--————————————————————————————————————————————————————————————————————--

function gui:generate_text_label(name, parent)
	local instance = Instance.new("TextLabel")
	local text_label = {
		Name = name or "Unnamed",
		Parent = parent or nil,
	}

	setmetatable(text_label, gui_mt)
	instance.Name = text_label.Name
	instance.Parent = text_label.Parent
	gui:output(instance, name, parent)
	return text_label
end

function gui:generate_text_button(name, parent)
	local instance = Instance.new("TextButton")
	local text_button = {
		Name = name or "Unnamed",
		Parent = parent or nil,
	}

	setmetatable(text_button, gui_mt)
	instance.Name = text_button.Name
	instance.Parent = text_button.Parent
	gui:output(instance, name, parent)
	return text_button
end

--————————————————————————————————————————————————————————————————————--

function gui:generate_image_button(name, imageId, parent)
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
	gui:output(instance, name, parent, imageId)
	return image_button
end

--————————————————————————————————————————————————————————————————————--

function gui:generate_text_label_button(name, parent)
	local instance = Instance.new("TextButton")
	local text_label_button = {
		Name = name or "Unnamed",
		Parent = parent or nil,
	}

	setmetatable(text_label_button, gui_mt)
	instance.Name = text_label_button.Name
	instance.Parent = text_label_button.Parent
	gui:output(instance, name, parent)
	return text_label_button
end

--————————————————————————————————————————————————————————————————————--

function gui:generate_scroll_frame(name, parent)
	local instance = Instance.new("ScrollingFrame")
	local scroll_frame = {
		Name = name or "Unnamed",
		Parent = parent or nil,
	}

	setmetatable(scroll_frame, gui_mt)
	instance.Name = scroll_frame.Name
	instance.Parent = scroll_frame.Parent
	gui:output(instance, name, parent)
	return scroll_frame
end

--————————————————————————————————————————————————————————————————————--

return gui
