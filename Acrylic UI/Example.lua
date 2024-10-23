local Library = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/3345-c-a-t-s-u-s/Acrylic/refs/heads/main/source"))();

local Window = Library:CreateWindow({
	Title = "Acrylic",
	Logo = "rbxassetid://7733920644",
});

local Tab = Window:AddTab({
	Title = "Example",
	Icon = "home",
});

Library.Theme:Houston()

Tab:AddBlock("Example")

Tab:AddButton({
	Title = "Button",
	Callback = function()
		print('Click!')
	end,
})

Tab:AddButton({
	Title = "Destroy UI",
	Callback = function()
	Window:Destroy()
	end,
})

Tab:AddToggle({
	Title = "Toggle",
	Default = false,
	Callback = function(value)
		print('Toggle!',value)
	end,
})

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

Tab:AddKeybind({
	Title = "Keybind",
	Default = "LeftControl",
	Callback = function(value)
		print('Keybind!',value)
	end,
})

Tab:AddTextbox({
	Title = "Textbox",
	PlaceHolder = "Input Here...",
	Default = "Text",
	Callback = function(value)
		print('Textbox!',value)
	end,
})

Tab:AddDropdown({
	Title = "Dropdown",
	Values = {1,2,3,4,5,6,7,8,9,10},
	Default = 5,
	Callback = function(value)
		print('Dropdown!',value)
	end,
})

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

Tab:AddParagraph({
	Title = "Paragraph",
	Description = "Description\n[1]: Example"
})
