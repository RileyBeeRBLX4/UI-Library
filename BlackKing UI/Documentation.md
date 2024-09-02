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
local Window = Library.CreateLib("TITLE", "DarkTheme")
```

## Creating a Library Notify
```lua
Library:Notify("test notification");
```

## Creating a Window
```lua
local Window = Library:CreateWindow({
    ["Title"] = "hi"
    ["Center"] = true,
    ["AutoShow"] = true,
    ["TabPadding"] = 0,
    ["MenuFadeTime"] = 0.2
});

```

## Creating a Tab
```lua
local Tabs = {
    ["Main"] = Window:AddTab("Functions")
};
local tapbox = Tabs.Main:AddLeftTabbox();
```

## Creating a Slider
```lua
LeftGroupBox:AddSlider("MySliderspeed", {
    ["Text"] = "Speed Boosts",
    ["Default"] = 6,
    ["Min"] = 1,
    ["Max"] = 6,
    ["Rounding"] = 0,
    ["Compact"] = true,
    ["Callback"] = function(SelectBootsez)
        _G.SelectBoots = SelectBootsez;
    end
});
```

## Creating a Toggle
```lua
LeftGroupBox:AddToggle("MyToggle", {
    ["Text"] = "Enable Speed Boosts",
    ["Default"] = false,
    ["Tooltip"] = "Speed Boosts",
    ["Callback"] = function(BootsSpeeds)
        _G.BootsSpeed = BootsSpeeds;
    end
});
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

## Creating a Dependency Box
```lua
local Depbox = LeftGroupBox:AddDependencyBox();
Depbox:AddDivider();
Depbox:AddSlider("DepboxSlider", {
    ["Text"] = "WalkSpeed",
    ["Default"] = 35,
    ["Min"] = 16,
    ["Max"] = 50,
    ["Rounding"] = 0,
    ["Compact"] = true,
    ["Callback"] = function(WalkSpeedBypassCheats)
        _G.WalkSpeedBypassCheat = WalkSpeedBypassCheats;
    end
});
```

## Creating a Color Picker
```lua
LeftGroupBox:AddLabel("Door"):AddColorPicker("ColorPicker", {
    ["Default"] = Color3.fromRGB(5, 255, 0),
    ["Title"] = "Doors Color",
    ["Transparency"] = nil,
    ["Callback"] = function(DoorsColors)
        _G.DoorsColor = DoorsColors;
    end
});

```

## Creating a Watermark
```lua
local WatermarkConnection = game:GetService("RunService").RenderStepped:Connect(function()
    Library:SetWatermark(("sigma hub":format(math.floor(FPS), math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue()), math.floor(game.Players.LocalPlayer.Character:GetAttribute("Oxygen"))));
end);
```
