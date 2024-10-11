# HoHo Hub V1 UI
This documentation is for HoHo Hub V1 UI Credit To acsu123

## Booting the HoHo Hub V1 UI Library
```lua
local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/hoho_lib.lua", true))()
```




## Creating a HoHo Hub V1 UI Window
```lua
local win = lib:Window("HoHo|Hub","Game",Color3.new(0.333333, 0.666667, 1))
```

## Creating a Tab
```lua
local tab = win:Tab("Main")
```

## Creating a Label (For The Label Function)
```lua
local label = tab:Label("Label", properties) --properties: {["Visible"] = false}
```

## Creating a label
```lua
label:NewLabel("Section", properties)
```

## Creating a Line
```lua
tab:Line()
```

## Creating a Button
```lua
tab:Button("Button", function()
— Your Script Here
end)
```

## Creating a Toggle
```lua
local toggle = tab:Toggle("Toggle", false, function()
— Your Script Here
end) 
```

## Toggle Text
```lua
toggle:NewText("Walk on Water")
```

## Toggle State
```lua
toggle:NewState(true)
```
Can be set to true or false

## Creating a Slider
```lua
local slider = tab:Slider("Slider",1,100,30,function()
print(hi)
end)
```

## Creating a Dropdown
```lua
local drop = tab:Dropdown("Dropdown", {"1", 2, 3}, function(hi)
print(hi)
end)
```

## Dropdown Text
```lua
drop:NewText("Drop New 2")
```

## New Dropdown
```lua
drop:NewDrop({Option 1,'Option 2',"Option 3"})
```

## Creating a Textbox
```lua
local txtbox = tab:Textbox("Textbox","Textbox",function()
print(hi)
end)
```

## Creating a Notification
```lua
lib:Nof("notification",3)
```
