# Creating New Class

#### Locate the Module
###### Recommanded to put Library inside of ReplicatedStorage
```lua
local library = require(directory.ModuleScript)

local class_module = library.Class
```

#### Creating a new class
```lua 
local class = class_module.new({ })
```

#### Adding tables
```lua 
local class = class_module.new({
    tables = {
        num1 = 1,
        num2 =2,
    }
})
```