# Material UI
This documentation is for Material UI Credit To Kinlei

## Booting the Material UI Library
```lua
local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()
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
local Fun = X.New({
    Title = "Hi"
})
```

## Creating a Button
```lua
local TestButton = Test.Button({
    Text = "test",
    Callback = function(value)
    print("value")
    end,
})
```

## Creating a Toggle
```lua
local TestToggle = Test.Toggle({
	Text = "hi",
	Callback = function(Value)
  print(Value)
	end,
})
```

## Creating a Silder
```lua
local TestSlider = Test.Slider({
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
local TestDropdown = Test.Dropdown({
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
