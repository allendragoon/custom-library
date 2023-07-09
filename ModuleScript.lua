--————————————————————————————————————————————————————————————————————--

local library = {}

--————————————————————————————————————————————————————————————————————--

local src_folder = script.Parent:WaitForChild('src')

--————————————————————————————————————————————————————————————————————--
--#Class

library.Class = require(src_folder.shared.class.class)
library.Class_Controller = require(src_folder.shared.class.class_controller)
library.Class_Editor = require(src_folder.shared.class.class_editor)

--————————————————————————————————————————————————————————————————————--
--#Debug

library.Input = require(src_folder.shared.debug.input)
library.Input = require(src_folder.shared.debug.output)

--————————————————————————————————————————————————————————————————————--
--#Events

library.Remote_Event = require(src_folder.shared.events.remote_event)
library.Remote_Utilities = require(src_folder.shared.events.remote_utilities)

--————————————————————————————————————————————————————————————————————--
--#User Inferface

library.Gui_Utilities  = require(src_folder.shared.user_interface.gui_utilities)
library.Key_Press  = require(src_folder.shared.user_interface.key_press)

--————————————————————————————————————————————————————————————————————--
--#Data base

library.Data_base = require(src_folder.shared.databases.database_table) -- Removed
library.Data_store = require(src_folder.shared.databases.data_store) -- Removed

--————————————————————————————————————————————————————————————————————--

return library