# Blek UI
This documentation is for Blek UI Credit To The Owner

## Booting the Blek UI Library
```lua
local BlekLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/RileyBeeRBLX4/UI-Library/main/Blek%20UI/Library.lua"))()
```




## Creating a Blek UI Window
```lua
local win = BlekLib:Create({
    Name = "Blek Library",
    StartupSound = {
        Toggle = true,
        SoundID = "rbxassetid://6958727243", -- Win 11 Startup Sound
        TimePosition = 1
    }
})
```

## Creating a Tab
```lua
local MainTab = win:Tab('Main')
```

## Creating a Toggle
```lua
MainTab:Toggle('test', function(a)
    print(a)
end)
```

## Creating a Slider
```lua
MainTab:Slider('Test', 30, 10, 300, function(Value)
print("Value")
end)
```

## Creating a Textbox
```lua
MainTab:Textbox('textbox', function(a)
    print(a)
end)
```

## Creating a Button
```lua
MainTab:Button('Button', function()
print("hi")
end)
```
