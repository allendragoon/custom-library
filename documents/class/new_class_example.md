# Creating New Class

#### Locate the Module
##### It is recommended to place your library inside ReplicatedStorage or any other appropriate location. 
##### You can require the ModuleScript using the require function.

```lua
local library = require(directory.ModuleScript)

local class_module = library.Class
```
##### Make sure to replace directory.ModuleScript with the actual directory path to your ModuleScript.

#### Creating a new class
##### Once you have the module, you can create a new instance of the class using the new method.
```lua 
local class = class_module.new({ })
```

#### Adding tables
##### You can also include tables as initial values when creating the class instance. This can be done by passing a table of values to the new method.
```lua 
local class = class_module.new({
    tables = {
        num1 = 1,
        num2 =2,
    }
})
```