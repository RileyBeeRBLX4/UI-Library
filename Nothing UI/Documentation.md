# Nothing UI
This documentation is for Nothing UI Credit To CAT_SUS

## Booting the Nothing UI Library
```lua
local NothingLibrary = loadstring(game:HttpGetAsync('https://raw.githubusercontent.com/3345-c-a-t-s-u-s/NOTHING/main/source.lua'))();
```




## Creating a Nothing UI Window
```lua
local Notification = NothingLibrary.Notification();

Notification.new({
	Title = "Notification",
	Description = "Example",
	Duration = 5,
	Icon = "rbxassetid://8997385628"
})
```

## Creating a Notification
```lua
local Windows = NothingLibrary.new({
	Title = "NOTHING",
	Description = "Nothing UI Library",
	Keybind = Enum.KeyCode.LeftControl,
	Logo = 'http://www.roblox.com/asset/?id=18898582662'
})
```


## Creating a Tab
```lua
local TabFrame = Windows:NewTab({
	Title = "Example",
	Description = "example tab",
	Icon = "rbxassetid://7733960981"
})
```

## Creating a Section
```lua
local Section = TabFrame:NewSection({
	Title = "Section",
	Icon = "rbxassetid://7743869054",
	Position = "Left"
})
```
For The Section You Can Set The Position To Right Or To The Left

## Creating a Toggle
```lua
Section:NewToggle({
	Title = "Toggle",
	Default = false,
	Callback = function()
        -- Your Script Here
	end,
})
```

## Creating a Button
```lua
Section:NewButton({
	Title = "Button",
	Callback = function()
        -- Your Script Here
	end,
})
```

## Creating a Slider
```lua
Section:NewSlider({
	Title = "Slider",
	Min = 10,
	Max = 50,
	Default = 25,
	Callback = function(a)
		print(a)
	end,
})
```

## Creating a Keybind
```lua
Section:NewKeybind({
	Title = "Keybind",
	Default = Enum.KeyCode.RightAlt,
	Callback = function(a)
		print(a)
	end,
})
```

## Creating a Dropdown
```lua
Section:NewDropdown({
	Title = "Dropdown",
	Data = {1,2,3,4,5},
	Default = 1,
	Callback = function(a)
		print(a)
	end,
})
```
```lua
Section:NewDropdown({
	Title = "Dropdown",
	Data = {'Option 1','Option 2','Option 3'},
	Default = 'Auto',
	Callback = function(a)
		print(a)
	end,
})
```

## Creating a Label
```lua
InfoSection:NewTitle('UI by CATSUS')
```

## Info Button
```lua
InfoSection:NewButton({	
	Title = "Discord",
	Callback = function()
		print('hi')
	end,
})
```

## Key System
```lua
NothingLibrary.NewAuth({
	Title = "Neuron X",
	GetKey = function() 
		return 'https://example.com/key'
	end,
	Auth = function(MAIN_KEY)
		if MAIN_KEY.Name == '1234' then
			return true;
		end;
	end,
	Freeze = true,
}).Close();
```
