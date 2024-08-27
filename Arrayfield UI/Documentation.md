# Arrayfield UI
This documentation is for Arrayfield UI Credit To Sirius

## Booting the Arrayfield UI Library
```lua
local ArrayField = loadstring(game:HttpGet("https://raw.githubusercontent.com/Hosvile/Refinement/main/MC%3AArrayfield%20Library"))()
```




## Creating a Arrayfield UI Window
```lua
local Window = ArrayField:CreateWindow({
        Name = "ArrayField Example Window",
        LoadingTitle = "ArrayField Interface Suite",
        LoadingSubtitle = "by Arrays",
        ConfigurationSaving = {
            Enabled = true,
            FolderName = nil, -- Create a custom folder for your hub/game
            FileName = "ArrayField"
        },
        Discord = {
            Enabled = false,
            Invite = "sirius", -- The Discord invite code, do not include discord.gg/
            RememberJoins = true -- Set this to false to make them join the discord every time they load it up
        },
        KeySystem = true, -- Set this to true to use our key system
        KeySettings = {
            Title = "ArrayField",
            Subtitle = "Key System",
            Note = "Join the discord (discord.gg/sirius)",
            FileName = "ArrayFieldsKeys",
            SaveKey = false,
            GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like ArrayField to get the key from
            Key = {"Hello",'Bye'},
            Actions = {
                [1] = {
                    Text = 'Click here to copy the key link',
                    OnPress = function()

                    end,
                }
            },
        }
    })
```

## Creating a Tab
```lua
local Tab = Window:CreateTab("Tab Example", 4483362458) -- Title, Image
```

## Creating a Section
```lua
local Section = Tab:CreateSection("Section Example",false) - Section
```

## Creating a Button
```lua
local Button = Tab:CreateButton({
        Name = "Button Example",
        Interact = 'Changable',
        Callback = function()
            print('Pressed')
        end,
    })
```

## Creating a Toggle
```lua
local Toggle = Tab:CreateToggle({
        Name = "Toggle Example",
        CurrentValue = false,
        Flag = "Toggle1",
        Callback = function(Value)
            print(Value)
        end,
    })
```

## Creating a ColorPicker
```lua
local ColorPicker = Tab:CreateColorPicker({
        Name = "Color Picker",
        Color = Color3.fromRGB(2,255,255),
        Flag = "ColorPicker1",
        Callback = function(Value)
            print(Value)
        end
    })
```

## Creating a Silder
```lua
local Slider = Tab:CreateSlider({
        Name = "Slider Example",
        Range = {0, 100},
        Increment = 10,
        Suffix = "Bananas",
        CurrentValue = 10,
        Flag = "Slider1",
        Callback = function(Value)
            print(Value)
        end,
    })
```

## Creating a Keybind
```lua
local Keybind = Tab:CreateKeybind({
        Name = "Keybind Example",
        CurrentKeybind = "Q",
        HoldToInteract = false,
        Flag = "Keybind1",
        Callback = function(Keybind)

        end,
    })
```

## Creating a Textbox
```lua
Tab:CreateInput({
        Name = "Textbox",
        PlaceholderText = "Text",
        NumbersOnly = false, -- can change to true (optional)
        OnEnter = true,
        CharacterLimit = 11, -- you can remove character limit if you want
        RemoveTextAfterFocusLost = true, -- can change to true (optional)
        Callback = function(Text)
            print(Text)
        end,
    })
```

## Creating a Multi-Dropdown
```lua
local MultiSelectionDropdown = Tab:CreateDropdown({
        Name = "Multi Selection",
        Options = {"Option 1","Option 2",'Option 3'},
        CurrentOption = {"Option 1","Option 3"} ,
        MultiSelection = true,
        Flag = "Dropdown1",
        Callback = function(Option)
            print(Option)
        end,
    })
```

## Creating a Dropdown
```lua
local SingleSelection = Tab:CreateDropdown({
        Name = "Single Selection",
        Options = {"Option 1","Option 2"},
        CurrentOption = "Option 1",
        MultiSelection = false,
        Flag = "Dropdown2",
        Callback = function(Option)
            print(Option)
        end,
    })
```


## Creating a Label
```lua
local Label = Tab:CreateLabel("Thanks for using Arrayfield, there were alot of issues but here we are!",Section)
```

## Creating a Paragraph
```lua
local Paragraph = Tab:CreateParagraph({Title = "Paragraph Example", Content = "Paragraph Example"},Section)
```

## Misc
```lua
local SButton
    SButton = Tab:CreateButton({
        Name = "Button Example",
        Interact = 'Interact',
        SectionParent = Sets,
        Callback = function()
            SButton:Set(nil,'New Interaction')
        end
    })
    Tab:CreateButton({
        Name = "Dropdown Set",
        Interact = 'Interact',
        SectionParent = Sets,
        Callback = function()
            SingleSelection:Set('Option 1')
        end
    })

    local LockTesting = Tab:CreateSection('Lockdown Section',false)
    local ToLock = {}
    Tab:CreateToggle({
        Name = "Lockdown",
        SectionParent = LockTesting,
        CurrentValue = false,
        Callback = function(Value)
            if Value then
                for _,v in ToLock do
                    v:Lock('Locked')
                end
            else
                for _,v in ToLock do
                    v:Unlock('Locked')
                end
            end
        end,
    })
    Tab:CreateSpacing(LockTesting)
    ToLock.Button = Tab:CreateButton({
        SectionParent = LockTesting,
        Name = "Button Example",
        Interact = 'Interact',
        Callback = function()
            print('Pressed')
        end,
    })
    ToLock.Toggle = Tab:CreateToggle({
        SectionParent = LockTesting,
        Name = "Toggle Example",
        CurrentValue = false,
        Flag = "Toggle2", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            print(Value)
        end,
    })
    ToLock.ColorPicker = Tab:CreateColorPicker({
        Name = "Color Picker",
        SectionParent = LockTesting,
        Color = Color3.fromRGB(2,255,255),
        Flag = "ColorPicker2",
        Callback = function(Value)
            print(Value)
        end
    })
    ToLock.Slider = Tab:CreateSlider({
        SectionParent = LockTesting,
        Name = "Slider Example",
        Range = {0, 100},
        Increment = 10,
        Suffix = "Bananas",
        CurrentValue = 10,
        Flag = "Slider2",
        Callback = function(Value)
            print(Value)
        end,
    })
    ToLock.Keybind = Tab:CreateKeybind({
        Name = "Keybind Example",
        CurrentKeybind = "Q",
        HoldToInteract = false,
        SectionParent = LockTesting,
        Flag = "Keybind2",
        Callback = function(Keybind)

        end,
    })
```
