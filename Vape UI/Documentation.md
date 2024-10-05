# Vape UI
This documentation is for Vape UI Credit To dawid

## Booting the Vape UI Library
```lua
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/Vape.txt"))()
```




## Creating a Vape UI Window
```lua
local Window = Library:Window("PREVIEW",Color3.fromRGB(44, 120, 224), Enum.KeyCode.RightControl)
```

## Creating a Tab
```lua
local Tab = Window:Tab("Tab 1")
```

## Creating a Notify
```lua
Library:Notification("Notification", "Hello!", "Hi!")
```

## Creating a Button
```lua
Tab:Button("Button", function()
Library:Notification("Notification", "Hello!", "Hi!")
end)
```

## Creating a Toggle
```lua
Tab:Toggle("Toggle",false, function(Value)
print(Value)
end)
```

## Creating Dropdown
```lua
Tab:Dropdown("Dropdown",{"Option 1","Option 2","Option 3","Option 4","Option 5"}, function(Value)
print(Value)
end)
```

## Creating a Colorpicker
```lua
Tab:Colorpicker("Colorpicker",Color3.fromRGB(255,0,0), function(Value)
print(Value)
end)
```

## Creating a Textbox
```lua
Tab:Textbox("Textbox",true, function(Value)
print(Value)
end)
```

## Creating a Keybind
```lua
Tab:Bind("Keybind",Enum.KeyCode.RightShift, function()
print("Pressed!")
end)
```

## Creating a Label
```lua
Tab:Label("Label")
```

## Change UI Color
```lua
ChangeColor:Colorpicker("Change UI Color",Color3.fromRGB(44, 120, 224), function(t)
Library:ChangePresetColor(Color3.fromRGB(t.R * 255, t.G * 255, t.B * 255))
end)
```
