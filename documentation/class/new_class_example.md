# Creating New Class

___

### Locate the Module
It is recommended to place your library inside ReplicatedStorage or any other appropriate location. 
You can require the `ModuleScript` using the `require` function.

```lua
local library = require(directory.ModuleScript)

local class_module = library.Class
```
> **Note**
Make sure to replace `directory.ModuleScript` with the actual directory path to your `ModuleScript`.
___

### Creating a new class
Once you have the module, you can create a new instance of the class using the `new` method.

```lua 
local class = class_module.new({ })
```
This code defines a local variable named class and assigns it the result of calling the new() function from the `class_module`. The `new()` function is invoked with a single argument, which is a table containing various data structures and functions.

___

### Adding tables
You can also include tables as initial values when creating the `class` instance. This can be done by passing a table of values to the new method.

The tables table contains various key-value pairs, including `num1` and `num2` with their respective values.
```lua 
local class = class_module.new({
    tables = {
        num1 = 1,
        num2 =2,
    }
})
```
___

### Expanding the table
It also includes a nested table called nestedTable which further contains multiple key-value pairs.
Within `nestedTable`, there is a string value str, a boolean value bool, and an array array with elements 3, 4, and 5.
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
> **Note**
Additionally, `nestedTable` contains another sub-table called `subTable`, which includes a function func and a user data value `userData`. Please replace `userdata` with an actual `userdata` value.
___
### Expanding sub tables
This code snippet provides a basic structure for creating and organizing data structures and functions in Table form. It can serve as a starting point for building more complex applications or systems.
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
        advancedTable = {
            anotherFunc = function(param)
                print("Another function with parameter:", param)
            end,
            customObject = {
                name = "Custom Object",
                description = "An example of a custom object",
                nestedObject = {
                    prop1 = "Property 1",
                    prop2 = "Property 2"
                }
            },
            coroutineFunc = function()
                print("Coroutine function started.")
                local i = 0
                while i < 3 do
                    coroutine.yield(i)
                    i = i + 1
                end
                print("Coroutine function ended.")
            end
        }
    },
})
```
___

### Running coroutineFunc
This demonstrates the sequential execution of a coroutine function using multiple `resume()` calls. Each `resume()` call allows the coroutine to execute a portion of its code until it encounters a `yield()` statement. The yielded values are printed as output during the execution of the coroutine function.
```lua
local co = coroutine.create(class.class.advancedTable.coroutineFunc)
coroutine.resume(co)
coroutine.resume(co)  
coroutine.resume(co) 
coroutine.resume(co) 
coroutine.resume(co) 
```
##### Output
```
Coroutine function started.
Coroutine function ended.
```
___

### Outputting the table
To output the contents of the table, you can utilize the `print_tables` function provided by the class library. This function enables you to conveniently display the table's data structure and values.

##### Method 1
```lua
class:print_tables(class.class)
```
##### Method 2
```lua
class_module:print_tables(class.class)
```
___

### Output
```
   ▼  {
    ["advancedTable"] =  ▼  {
       ["anotherFunc"] = "function",
       ["coroutineFunc"] = "function",
       ["customObject"] =  ▼  {
          ["description"] = "An example of a custom object",
          ["name"] = "Custom Object",
          ["nestedObject"] =  ▼  {
             ["prop1"] = "Property 1",
             ["prop2"] = "Property 2"
          }
       }
    },
    ["nestedTable"] =  ▼  {
       ["array"] =  ▼  {
          [1] = 3,
          [2] = 4,
          [3] = 5
       },
       ["bool"] = true,
       ["str"] = "Hello",
       ["subTable"] =  ▼  {
          ["func"] = "function"
       }
    },
    ["num1"] = 1,
    ["num2"] = 2
  }
```
___

