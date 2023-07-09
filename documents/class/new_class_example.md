# Creating New Class

### Locate the Module
It is recommended to place your library inside ReplicatedStorage or any other appropriate location. 
You can require the ModuleScript using the require function.

```lua
local library = require(directory.ModuleScript)

local class_module = library.Class
```
Make sure to replace directory.ModuleScript with the actual directory path to your ModuleScript.

### Creating a new class
Once you have the module, you can create a new instance of the class using the new method.

```lua 
local class = class_module.new({ })
```
The class_module.new() method is used to create a new instance of the class.
Inside the table passed to new(), there is a key called tables which contains a nested table structure.

### Adding tables
You can also include tables as initial values when creating the class instance. This can be done by passing a table of values to the new method.
```lua 
local class = class_module.new({
    tables = {
        num1 = 1,
        num2 =2,
    }
})
```

### Expanding the table
The tables table contains various key-value pairs, including num1 and num2 with their respective values.

It also includes a nested table called nestedTable which further contains multiple key-value pairs.
Within nestedTable, there is a string value str, a boolean value bool, and an array array with elements 3, 4, and 5.
```lua
local class = class_module.new({
    tables = {
        num1 = 1,
        num2 = 2,
        nestedTable = {
            str = "Hello",
            bool = true,
            array = {3, 4, 5},
            subTable = {
                func = function()
                    print("This is a function.")
                end,
                userData = userdata,
            }
        },
    },
})
```
Additionally, nestedTable contains another sub-table called subTable, which includes a function func and a user data value userData. Please replace "userdata" with an actual userdata value.
