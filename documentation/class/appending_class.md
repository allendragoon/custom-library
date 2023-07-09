# Appending Class

### Locate the Module
It is recommended to place your library inside ReplicatedStorage or any other appropriate location. 
You can require the `ModuleScript` using the `require` function.

```lua
local library = require(directory.ModuleScript)

local class_controller_module = library.Class_Controller
```
Make sure to replace `directory.ModuleScript` with the actual directory path to your `ModuleScript`.
___

### Creating a new controller
Once you have the module, you can create a new instance of the class using the `new` method.

```lua 
local class_controller = class_controller_module.new()
```
This code defines a local variable named class and assigns it the result of calling the new() function from the `class_controller_module`.
___

### Naming the controller
By providing a unique `name` to the controller, you can easily identify and reference it within your codebase. Naming conventions can help make your code more readable, maintainable, and self-explanatory for yourself and other developers working on the project.
```lua 
local class_controller = class_controller_module.new(name)
```
In the code above, replace the `name` argument with any string of your choice. This string will serve as the `name` for the controller. Choose a descriptive name that accurately represents the purpose or functionality of the controller.
___

