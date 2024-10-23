# Acrylic UI
This documentation is for Acrylic UI Credit To CATSUS

## Booting the Acrylic UI Library
```lua
local Library = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/3345-c-a-t-s-u-s/Acrylic/refs/heads/main/source"))();
```




## Creating a Acrylic UI Window
```lua
local Window = Library:CreateWindow({
	Title = "Acrylic",
	Logo = "rbxassetid://7733920644",
});
```

## Creating a Tab
```lua
local Tab = Window:AddTab({
	Title = "Example",
	Icon = "home",
});
```

## Creating a Section
```lua
Tab:AddBlock("Example")
```

## Creating a Notification
```lua
Window:Notify({
	Title = 'Notification',
	Description = "notification test",
	Duration = 5
})
```
with highlight
```lua
Window:Notify({
	Title = 'Notification',
	Description = "notification test\n"..Library:HightlightSource('notification test'),
	Duration = 5
})
```

## Creating a Button
```lua
Tab:AddButton({
	Title = "Button",
	Callback = function()
		print('Click!')
	end,
})
```

## Creating a Toggle
```lua
Tab:AddToggle({
	Title = "Toggle",
	Default = false,
	Callback = function(value)
		print('Toggle!',value)
	end,
})
```

## Creating a Slider
```lua
Tab:AddSlider({
	Title = "Slider",
	Max = 100,
	Min = 1,
	Default = 25,
	Round = 1,
	Callback = function(value)
		print('Slider!',value)
	end,
})
```

## Creating a Keybind
```lua
Tab:AddKeybind({
	Title = "Keybind",
	Default = "LeftControl",
	Callback = function(value)
		print('Keybind!',value)
	end,
})
```

## Creating a Textbox
```lua
Tab:AddTextbox({
	Title = "Textbox",
	PlaceHolder = "Input Here...",
	Default = "Text",
	Callback = function(value)
		print('Textbox!',value)
	end,
})
```

## Creating a Dropdown
```lua
Tab:AddDropdown({
	Title = "Dropdown",
	Values = {1,2,3,4,5,6,7,8,9,10},
	Default = 5,
	Callback = function(value)
		print('Dropdown!',value)
	end,
})
```

## Creating a Multiple Dropdown
```lua
Tab:AddDropdown({
	Title = "Multiple Dropdown",
	Values = {1,2,3,4,5,6,7,8,9,10},
	Default = {3,4,5,6,7},
	Multi = true,
	MaxMulti = 10,
	Callback = function(value)
		print('Multiple Dropdown!',value)
	end,
})
```

## Creating a Paragraph
```lua
Tab:AddParagraph({
	Title = "Paragraph",
	Description = "Description\n[1]: Example"
})
```

## Themes
```lua
Library.Theme:Default()
```
```lua
Library.Theme:Catppuccin()
```
```lua
Library.Theme:Neverlose()
```
```lua
Library.Theme:Dark()
```
```lua
Library.Theme:Light()
```
```lua
Library.Theme:Discord()
```
```lua
Library.Theme:Houston()
```
```lua
Library.Theme:Matcha()
```

## Creating a Dialog
```lua
Window:Dialog({
	Title = "Dialog",
	Buttons = {
		{
			Title = 'hi',
			Callback = function()
				
			end,
		},{
			Title = 'uhh',
			Callback = function()
				
			end,
		},
		{
			Title = 'hello',
			Callback = function()

			end,
		},
		{
			Title = 'Acrylic',
			Callback = function()

			end,
		}
	}
})
```

### Functions
## Disable Animation
```lua
Library.PerformanceMode = true;
```

## Change UI Size
```lua
Window:Resize(Library.SizeLibrary.Default) -- UDim2
```

## Destroy UI
```lua
Window:Destroy()
```

### Key System
![Screenshot 2024-10-15 193017](https://github.com/user-attachments/assets/c9822e0b-2bb7-4261-973e-b5113920a4bf)
```lua
local Window = Library:CreateWindow({
	Title = 'Acrylic',
	Logo = "rbxassetid://7733920644",
	KeySystem = true,
	KeySystemInfo = {
		Title = "- Key System -",
		OnGetKey = function()
			return setclipboard('https://example.com/getkey?hwid=')
		end,
		OnLogin = function(key)
			if key == "1234" then
				wait(0.1);
				return true;
			end;
			
			wait();
			
			return false;
		end,
	}
});
```
