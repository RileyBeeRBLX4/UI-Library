# Discord Library UI
This documentation is for Discord Library UI Credit To The Owner

## Booting the Discord Library UI Library
```lua
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/RileyBeeRBLX4/UI-Library/refs/heads/main/DiscordLibrary%20UI/Library.lua"))()
```




## Creating a Discord Library UI Window
```lua
local Window = Library:Window("Discord Library")
```

## Creating a Tab
```lua
local Section = Window:Server("Main Section", "")
```

## Creating a Tab
```lua
local Tab = Section:Channel("Features")
```

## Creating a Discord UI Notification
```lua
Library:Notification("Notification", "hi", "hi")
```

## Creating a Seperator
```lua
Tab:Seperator()
```

## Creating a Button
```lua
Tab:Button("Button", function()
print("hi")
end)
```

## Creating a Toggle
```lua
Tab:Toggle("Toggle", false, function(Value)
print(Value)
end)
```

## Creating a Silder
```lua
Tab:Slider("Slide me!", 0, 1000, 400, function(value)
print(value)
end)
```

## Creating a Dropdown
```lua
Tab:Dropdown("Dropdown", {"Option 1", "Option 2", "Option 3", "Option 4", "Option 5"}, function(option)
print(option)
end)
```

## Creating a Textbox
```lua
Tab:Textbox("Textbox", "Type here!", true, function(text)
print(text)
end)
```

## Creating a Colorpicker
```lua
Tab:Colorpicker("Colorpicker", Color3.fromRGB(255, 1, 1), function(color)
print(color)
end)
```

## Creating a Label
```lua
Tab:Label("This is just a label.")
```


## Creating a Keybind
```lua
Tab:Bind("Keybind", Enum.KeyCode.RightShift, function()
print("hi")
end)
```
