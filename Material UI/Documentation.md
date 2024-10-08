# Material UI
This documentation is for Material UI Credit To Kinlei

## Booting the Material UI Library
```lua
local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/RileyBeeRBLX4/UI-Library/refs/heads/main/Material%20UI/Module.lua"))()
```




## Creating a Material UI Window
```lua
local X = Material.Load({
	Title = "Test",
	Style = 3,
	SizeX = 500,
	SizeY = 350,
	Theme = "Dark",
})
```

## Creating a Tab
```lua
local Main = X.New({
    Title = "Main"
})
```

## Creating a Button
```lua
local TestButton = Main.Button({
    Text = "test",
    Callback = function(value)
    print("value")
    end,
})
```

## Creating a Toggle
```lua
local TestToggle = Main.Toggle({
	Text = "hi",
	Callback = function(Value)
  print(Value)
	end,
})
```

## Creating a Silder
```lua
local TestSlider = Main.Slider({
	Text = "Slider",
	Callback = function(Value)
  print(Value)
	end,
	Min = 200,
	Max = 400,
	Def = 300
})
```

## Creating a Dropdown
```lua
local TestDropdown = Main.Dropdown({
	Text = "dropdown",
	Callback = function(Value)
		print(Value)
	end,
	Options = {
		"Floor 1",
		"Floor 2",
		"Floor 3",
		"Floor 4",
		"Floor 5"
	},
})
```
