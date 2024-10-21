# UwUWare UI
This documentation is for UwUWare UI Credit To The Owner

## Booting the UwUWare UI Library
```lua
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraScript/Script/main/test", true))()
```




## Creating a UwUWare UI Window
```lua
local Window = Library:CreateWindow"Window"
```

## Creating a Section
```lua
local Folder = Window:AddFolder"Main"
```

## Creating a Label
```lua
Folder:AddLabel({text = "Label"})
```

## Creating a Button
```lua
Folder:AddButton({text = "Button", flag = "button", callback = function()
-- Your Script Here
end})
```

## Creating a Toggle
```lua
Folder:AddToggle({text = "Toggle", flag = "toggle", state = false, callback = function(a)
-- Your Script Here
end})
```
For The Toggle You Can Change The Flag Into Toggle1 Or What Name You Like And You Can Also Change The State Into True

## Creating a Dropdown / List
```lua
Folder:AddList({text = "List", flag = "list", value = "Value", values = {"Value1", "Value2", "Value3", "Value4"}, callback = function(a)
-- Your Script Here
end})
```

## Creating a TextBox / Box
```lua
Folder:AddBox({text = "Box", flag = "box", value = "Value", callback = function(a)
-- Your Script Here
end})
```

## Slider Section
```lua
Folder:AddSlider({text = "Slider", flag = "slider", value = 100, min = 20, max = 200, float = 0.3, callback = function(a)
-- Your Script Here
end})
```
```lua
Folder:AddSlider({text = "Slider", flag = "slider1", value = 0, min = -50, max = 100, callback = function(a)
-- Your Script Here
end})
```
## Keybind Section
```lua
Folder:AddBind({text = "Bind", flag = "bind", key = "MouseButton1", callback = function()
-- Your Script Here
end})
```
```lua
Folder:AddBind({text = "Bind", flag = "bind", hold = true, key = "E" , callback = function(a)
-- Your Script Here
end})
```
```lua
Folder:AddBind({text = "Toggle UI", key = "RightShift", callback = function() library:Close()
end})
```

## Required For The UI
```lua
Library:Init()
```
Library:Init() Is Required When You Have Finished Your Script And Put It Below So The UI Can Load

## Library Flags
```lua
print("Toggle is currently:", Library.flags["toggle"])
```
```lua
print("Second toggle is currently:", Library.flags["toggle1"])
```
