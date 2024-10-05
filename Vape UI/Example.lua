local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/Vape.txt"))()

local Window = Library:Window("PREVIEW",Color3.fromRGB(44, 120, 224), Enum.KeyCode.RightControl)

local Tab = Window:Tab("Tab 1")

Tab:Button("Button", function()
Library:Notification("Notification", "Hello!", "Hi!")
end)

Tab:Toggle("Toggle",false, function(Value)
print(Value)
end)

Tab:Dropdown("Dropdown",{"Option 1","Option 2","Option 3","Option 4","Option 5"}, function(Value)
print(Value)
end)

Tab:Colorpicker("Colorpicker",Color3.fromRGB(255,0,0), function(Value)
print(Value)
end)

Tab:Textbox("Textbox",true, function(Value)
print(Value)
end)

Tab:Bind("Keybind",Enum.KeyCode.RightShift, function()
print("Pressed!")
end)

Tab:Label("Label")
