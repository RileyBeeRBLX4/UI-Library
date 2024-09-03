# BlackKing UI
This documentation is for BlackKing UI Credit To BlackKing

## Booting the BlackKing UI Library
```lua
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/KINGHUB01/Gui/main/Gui%20Lib%20%5BLibrary%5D"))();
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/KINGHUB01/Gui/main/Gui%20Lib%20%5BThemeManager%5D"))();
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/KINGHUB01/Gui/main/Gui%20Lib%20%5BSaveManager%5D"))();
```




## Creating a BlackKing UI Window
```lua
local Window = Library:CreateWindow({["Title"]=("test"),["Center"]=true,["AutoShow"]=true,["TabPadding"]=0,["MenuFadeTime"]=0.2});
```

## Creating a Library Notify
```lua
Library:Notify("test notification");
```

## Creating a Tab
```lua
local Tabs = {
    ["Main"] = Window:AddTab("Functions")
};
local tapbox = Tabs.Main:AddLeftTabbox();
```

## Creating a Left Group Box Tab
```lua
local LeftGroupBox = tapbox:AddTab("test");
```

## Creating a Left Divider
```lua
LeftGroupBox:AddDivider();
```

## Creating a Slider
```lua
LeftGroupBox:AddSlider("MySliderspeed", {["Text"]="test",["Default"]=6,["Min"]=1,["Max"]=6,["Rounding"]=0,["Compact"]=true,["Callback"]=function(value)
print(Value)
end});
```

## Creating a Button
```lua
LeftGroupBox:AddButton("Button", function()
print("Clicked")
end);
```

## Creating a Toggle
```lua
LeftGroupBox:AddToggle("MyToggle", {["Text"]="test",["Default"]=false,["Tooltip"]="test",["Callback"]=function(value)
print(Value)
end});
```
```lua
LeftGroupBox:AddToggle("ControlToggle", {
    ["Text"] = "Bypass Anti Cheat",
    ["Default"] = false,
    ["Tooltip"] = "Bypass Anti Cheat",
    ["Callback"] = function(BypassCheats)
        _G.AntiCheat = BypassCheats;
        -- Logic to bypass anti-cheat goes here
    end
});
```

## Creating a Right Group Box Tab
```lua
local tapbox = Tabs.Main:AddRightTabbox();
local LeftGroupBox = tapbox:AddTab("hi");
```

## Creating a Interact Box
```lua
local Interactbox = LeftGroupBox:AddDependencyBox();
```
You Can Put The Interact Box In The Left Group Box Tab Or Right Group Box Tab And You Can Put Them On The Coorsponding Like Under The Left Group Box Toggle Put It Under Then It Would Be On The Left Group Box Tab And The Same As Right Group Box Tab

## Creating a Interact Box
```lua
Interactbox:AddDivider();
```

## Creating a Dependency Box
```lua
local Depbox = LeftGroupBox:AddDependencyBox();
```

## Creating a Divider Dependency Box
```lua
Depbox:AddDivider();
```


## Creating a Slider Dependency Box
```lua
Depbox:AddSlider("DepboxSlider", {
    ["Text"] = "WalkSpeed",
    ["Default"] = 35,
    ["Min"] = 16,
    ["Max"] = 50,
    ["Rounding"] = 0,
    ["Compact"] = true,
    ["Callback"] = function(Value)
    print("Slider")
    end
});
```

## Creating a Textbox
```lua
LeftGroupBox:AddInput("MyTextbox", {["Default"]="test",["Numeric"]=false,["Finished"]=false,["Text"]="test",["Tooltip"]="test",["Placeholder"]="test",["Callback"]=function(value)
print(Value)
end});
```

## Creating a Keybind
```lua
LeftGroupBox:AddLabel("Keybind"):AddKeyPicker("Keybind", {["Default"]="RightControl",["NoUI"]=true,["Text"]="Keybind"});
```

## Creating a Color Picker
```lua
LeftGroupBox:AddLabel("Door"):AddColorPicker("ColorPicker", {
    ["Default"] = Color3.fromRGB(5, 255, 0),
    ["Title"] = "Colorpicker",
    ["Transparency"] = nil,
    ["Callback"] = function(value)
    print(Value)
    end
});
```

## Creating a Tab For Config
```lua
local TestTab = Tabs["Tab"]:AddLeftGroupbox("Hi");
```
 
## Creating a Watermark (Broken)
```lua
local WatermarkConnection = game:GetService("RunService").RenderStepped:Connect(function()
    Library:SetWatermark(("sigma hub":format(math.floor(FPS), math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue()), math.floor(game.Players.LocalPlayer.Character:GetAttribute("Oxygen"))));
end);
```

## Config
```lua
Library.ToggleKeybind = Options.MenuKeybind;
ThemeManager:SetLibrary(Library);
SaveManager:SetLibrary(Library);
SaveManager:IgnoreThemeSettings();
SaveManager:SetIgnoreIndexes({"Keybind"});
ThemeManager:SetFolder("MyScriptHub");
SaveManager:SetFolder("MyScriptHub/Test");
SaveManager:BuildConfigSection(Tabs["Test"]);
ThemeManager:ApplyToTab(Tabs["Test"]);
SaveManager:LoadAutoloadConfig();
```