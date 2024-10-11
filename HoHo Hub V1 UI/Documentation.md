# HoHo Hub V1 UI
This documentation is for HoHo Hub V1 UI Credit To acsu123

## Booting the HoHo Hub V1 UI Library
```lua
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/hoho_lib.lua", true))()
```




## Creating a HoHo Hub V1 UI Window
```lua
local Window = Library:Window("HoHo|Hub","Game",Color3.new(0.333333, 0.666667, 1))
```

## Creating a Tab
```lua
local Tab = Window:Tab("Main")
```

## Creating a Label (For The Label Function)
```lua
local Label = Tab:Label("Label", properties) --properties: {["Visible"] = false}
```

## Creating a label
```lua
Label:NewLabel("Section", properties)
```

## Creating a Line
```lua
Tab:Line()
```

## Creating a Button
```lua
Tab:Button("Button", function()
— Your Script Here
end)
```

## Creating a Toggle
```lua
local Toggle = Tab:Toggle("Toggle", false, function()
— Your Script Here
end) 
```

## Toggle Text
```lua
Toggle:NewText("Walk on Water")
```

## Toggle State
```lua
Toggle:NewState(true)
```
Can be set to true or false

## Creating a Slider
```lua
local Slider = Tab:Slider("Slider",1,100,30,function()
print(hi)
end)
```

## Creating a Dropdown
```lua
local Dropdown = Tab:Dropdown("Dropdown", {"1", 2, 3}, function(hi)
print(hi)
end)
```

## Dropdown Text
```lua
Dropdown:NewText("Drop New 2")
```

## New Dropdown
```lua
Dropdown:NewDrop({Option 1,'Option 2',"Option 3"})
```

## Creating a Textbox
```lua
local Textbox = Tab:Textbox("Textbox","Textbox",function()
print(hi)
end)
```

## Creating a Notification
```lua
Library:Nof("notification",3)
```
