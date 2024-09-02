local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/KINGHUB01/Gui/main/Gui%20Lib%20%5BLibrary%5D"))();
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/KINGHUB01/Gui/main/Gui%20Lib%20%5BThemeManager%5D"))();
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/KINGHUB01/Gui/main/Gui%20Lib%20%5BSaveManager%5D"))();

local Window = Library:CreateWindow({["Title"]=("test"),["Center"]=true,["AutoShow"]=true,["TabPadding"]=0,["MenuFadeTime"]=0.2});

local Tabs = {
    ["Main"] = Window:AddTab("Functions")
};
local tapbox = Tabs.Main:AddLeftTabbox();

local LeftGroupBox = tapbox:AddTab("test");

LeftGroupBox:AddSlider("MySliderspeed", {["Text"]="test",["Default"]=6,["Min"]=1,["Max"]=6,["Rounding"]=0,["Compact"]=true,["Callback"]=function(value)
print(Value)
end});

LeftGroupBox:AddDivider();

LeftGroupBox:AddToggle("MyToggle", {["Text"]="test",["Default"]=false,["Tooltip"]="test",["Callback"]=function(value)
print(Value)
end});

local Interactbox = LeftGroupBox:AddDependencyBox();

LeftGroupBox:AddButton("Button", function()
print("Clicked")
end);

Interactbox:AddToggle("MyToggle", {["Text"]="test",["Default"]=false,["Tooltip"]="test",["Callback"]=function(value)
print(Value)
end});

local tapbox = Tabs.Main:AddRightTabbox();
local LeftGroupBox = tapbox:AddTab("hi");

LeftGroupBox:AddToggle("MyToggle", {["Text"]="test",["Default"]=false,["Tooltip"]="test",["Callback"]=function(value)
print(Value)
end});

LeftGroupBox:AddLabel("Keybind"):AddKeyPicker("Keybind", {["Default"]="RightControl",["NoUI"]=true,["Text"]="Keybind"});

LeftGroupBox:AddLabel("Door"):AddColorPicker("ColorPicker", {
    ["Default"] = Color3.fromRGB(5, 255, 0),
    ["Title"] = "Colorpicker",
    ["Transparency"] = nil,
    ["Callback"] = function(value)
    print(Value)
    end
});

local Depbox = LeftGroupBox:AddDependencyBox();

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
