-- UI library is made by wally
local player = game.Players.LocalPlayer
LocalPlayer = game.Players.LocalPlayer

Players = game:GetService("Players")
RunService = game:GetService("RunService")

function stare(name)
    if stareLoop then
        stareLoop:Disconnect()
    end
    if not Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and name.Character:FindFirstChild("HumanoidRootPart") then return end
    local function stareFunc()
        if Players.LocalPlayer.Character.PrimaryPart and Players:FindFirstChild(tostring(name)) and name.Character ~= nil and name.Character:FindFirstChild("HumanoidRootPart") then
            local chrPos=Players.LocalPlayer.Character.PrimaryPart.Position
            local tPos=name.Character:FindFirstChild("HumanoidRootPart").Position
            local modTPos=Vector3.new(tPos.X,chrPos.Y,tPos.Z)
            local newCF=CFrame.new(chrPos,modTPos)
            Players.LocalPlayer.Character:SetPrimaryPartCFrame(newCF)
        elseif not Players:FindFirstChild(tostring(name)) or not name.Character:FindFirstChild("HumanoidRootPart") or not name:FindFirstChild("Character") then
            stareLoop:Disconnect()
        end
    end
    stareLoop = RunService.RenderStepped:Connect(stareFunc)
end

function stare2(name,duration)
    spawn(function()
        if stareLoop then
            stareLoop:Disconnect()
        end
        if not Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and name.Character:FindFirstChild("HumanoidRootPart") then return end
        local function stareFunc()
            if Players.LocalPlayer.Character.PrimaryPart and Players:FindFirstChild(tostring(name)) and name.Character ~= nil and name.Character:FindFirstChild("HumanoidRootPart") then
                local chrPos=Players.LocalPlayer.Character.PrimaryPart.Position
                local tPos=name.Character:FindFirstChild("HumanoidRootPart").Position
                local modTPos=Vector3.new(tPos.X,chrPos.Y,tPos.Z)
                local newCF=CFrame.new(chrPos,modTPos)
                Players.LocalPlayer.Character:SetPrimaryPartCFrame(newCF)
            elseif not Players:FindFirstChild(tostring(name)) or not name.Character:FindFirstChild("HumanoidRootPart") or not name:FindFirstChild("Character") then
                stareLoop:Disconnect()
            end
        end
        stareLoop = RunService.RenderStepped:Connect(stareFunc)
        wait(duration)
        stareLoop:Disconnect()
    end)
end

function h(v)
    enrp = v.Character.HumanoidRootPart
    hmrp.CFrame =
        CFrame.lookAt(
        hmrp.Position,
        Vector3.new(enrp.Position.X, hmrp.Position.Y, enrp.Position.Z)
    )
end

local repo = 'https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/'

local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()

local Window = Library:CreateWindow({
    Title = 'PSA auto attack made by georgefl#5105',
    Center = true, 
    AutoShow = true,
})

local Tabs = {
    Main = Window:AddTab('Page 1'), 
    ['UI Settings'] = Window:AddTab('UI Settings'),
    Stuff = Window:AddTab('Credits'), 
}
local LeftGroupBox = Tabs.Stuff:AddLeftGroupbox('ok')
local discbutton = LeftGroupBox:AddButton('copy discord invite to clipboard', function()
    setclipboard("https://discord.gg/7vUdVGezFR")
end)
discbutton:AddTooltip('join our server!')
LeftGroupBox:AddLabel('made by georgefl#5105')

local Gunslinger = Tabs.Main:AddLeftTabbox('hello')
local Bunny = Tabs.Main:AddLeftTabbox('hello') 
local Gun1 = Gunslinger:AddTab('Gunslinger')
local Gun2 = Gunslinger:AddTab('Settings')
local Bun1 = Bunny:AddTab('Bunny')
local Bun2 = Bunny:AddTab('Settings')


local GunEnable = Gun1:AddButton('Enable', function()
    spawn(function()
        while GunENE do
            if GunENE and GunLMBE then
                for i,v in pairs(game.Players:GetPlayers()) do
                    if v ~= player and pcall(function() return v.Character.HumanoidRootPart end) and player:DistanceFromCharacter(v.Character.HumanoidRootPart.Position) < tonumber(GunLMBR) then
                        if pcall(function() return v.Character.Part,player.Character.Part end) and v.Character.Part.Color ~= player.Character.Part.Color or not player.Character:FindFirstChild("Part") then
                            hmrp = game.Players.LocalPlayer.Character.HumanoidRootPart
                            stare(v)
                            local VirtualInputManager = game:GetService("VirtualInputManager")
                            VirtualInputManager:SendMouseButtonEvent(620, 662, 0, true, game, 0)
                            VirtualInputManager:SendMouseButtonEvent(620, 662, 0, false, game, 0)
                            wait()
                        end
                    end
                end
            end
            wait()
        end
    end)

    spawn(function()
        while GunENE do
            if GunQE then
                for i,v in pairs(game.Players:GetPlayers()) do
                    if v ~= player and pcall(function() return v.Character.HumanoidRootPart end) and player:DistanceFromCharacter(v.Character.HumanoidRootPart.Position) < tonumber(GunQSR) then
                        if pcall(function() return v.Character.Part,player.Character.Part end) and v.Character.Part.Color ~= player.Character.Part.Color or not player.Character:FindFirstChild("Part") then
                            hmrp = game.Players.LocalPlayer.Character.HumanoidRootPart
                            stare(v)
                            keypress(0x51) --Q
                            keyrelease(0x51)
                            wait()
                        end
                    end
                end
            end
            wait()
        end
    end)

    spawn(function()
        while GunENE do
            if GunEE then
                for i,v in pairs(game.Players:GetPlayers()) do
                    if v ~= player and pcall(function() return v.Character.HumanoidRootPart end) and player:DistanceFromCharacter(v.Character.HumanoidRootPart.Position) < tonumber(GunESR) then
                        if pcall(function() return v.Character.Part,player.Character.Part end) and v.Character.Part.Color ~= player.Character.Part.Color or not player.Character:FindFirstChild("Part") then
                            hmrp = game.Players.LocalPlayer.Character.HumanoidRootPart
                            stare(v)
                            keypress(0x45) --E
                            keyrelease(0x45)
                            wait()
                        end
                    end
                end
            end
            wait()
        end
    end)

    spawn(function()
        while GunENE do
            if GunFE then
                for i,v in pairs(game.Players:GetPlayers()) do
                    if v ~= player and pcall(function() return v.Character.HumanoidRootPart end) and player:DistanceFromCharacter(v.Character.HumanoidRootPart.Position) < tonumber(GunFSR) then
                        if pcall(function() return v.Character.Part,player.Character.Part end) and v.Character.Part.Color ~= player.Character.Part.Color or not player.Character:FindFirstChild("Part") then
                            hmrp = game.Players.LocalPlayer.Character.HumanoidRootPart
                            stare(v)
                            local crit = game.Workspace[LocalPlayer.name].Stats.Critical
                            if crit.Value == 100 then
                                keypress(0x46)
                            end
                            keyrelease(0x46)
                            wait()
                        end
                    end
                end
            end
            wait()
        end
    end)

end)



GunEnable:AddTooltip('Activates gunslinger auto attack')

Gun1:AddToggle('GunEn', {
    Text = 'Enable',
    Default = true, -- Default value (true / false)
    Tooltip = 'disabling this will cause the auto attack to stop', -- Information shown when you hover over the toggle
})

Toggles.GunEn:OnChanged(function()
    GunENE = Toggles.GunEn.Value
end)

Gun1:AddToggle('GunLMB', {
    Text = 'Auto LMB',
    Default = true, -- Default value (true / false)
    Tooltip = 'Automatically uses LMB', -- Information shown when you hover over the toggle
})

Toggles.GunLMB:OnChanged(function()
    GunLMBE = Toggles.GunLMB.Value
end)

Gun1:AddToggle('GunQ', {
    Text = 'Auto Q',
    Default = true, -- Default value (true / false)
    Tooltip = 'Automatically uses Q skill', -- Information shown when you hover over the toggle
})

Toggles.GunQ:OnChanged(function()
    GunQE = Toggles.GunQ.Value
end)

Gun1:AddToggle('GunE', {
    Text = 'Auto E',
    Default = false, -- Default value (true / false)
    Tooltip = 'Automatically uses E skill (not recommended)', -- Information shown when you hover over the toggle
})

Toggles.GunE:OnChanged(function()
    GunEE = Toggles.GunE.Value
end)

Gun1:AddToggle('GunF', {
    Text = 'Auto F',
    Default = true, -- Default value (true / false)
    Tooltip = 'Automatically uses F skill', -- Information shown when you hover over the toggle
})

Toggles.GunF:OnChanged(function()
    GunFE = Toggles.GunF.Value
end)

Gun2:AddSlider('GunLMBS', {
    Text = 'LMB range',
    Default = 25,
    Min = 1,
    Max = 32,
    Rounding = 0,

    Compact = false, -- If set to true, then it will hide the label
})

Options.GunLMBS:OnChanged(function()
    GunLMBR = Options.GunLMBS.Value
end)

Gun2:AddSlider('GunQS', {
    Text = 'Q skill range',
    Default = 8,
    Min = 1,
    Max = 8,
    Rounding = 1,

    Compact = false, -- If set to true, then it will hide the label
})

Options.GunQS:OnChanged(function()
    GunQSR = Options.GunQS.Value
end)

Gun2:AddSlider('GunES', {
    Text = 'E skill range',
    Default = 0,
    Min = 0,
    Max = 20,
    Rounding = 0,

    Compact = false, -- If set to true, then it will hide the label
})

Options.GunES:OnChanged(function()
    GunESR = Options.GunES.Value
end)

Gun2:AddSlider('GunFS', {
    Text = 'F skill range',
    Default = 25,
    Min = 1,
    Max = 100,
    Rounding = 1,

    Compact = false, 
})

Options.GunFS:OnChanged(function()
    GunFSR = Options.GunFS.Value
end)

local BunEnable = Bun1:AddButton('Enable', function()
    spawn(function()
        while BunENE do
            if BunENE and BunLMBE then
                for i,v in pairs(game.Players:GetPlayers()) do
                    if v ~= player and pcall(function() return v.Character.HumanoidRootPart end) and player:DistanceFromCharacter(v.Character.HumanoidRootPart.Position) < 11 then
                        if pcall(function() return v.Character.Part,player.Character.Part end) and v.Character.Part.Color ~= player.Character.Part.Color or not player.Character:FindFirstChild("Part") then
                            hmrp = game.Players.LocalPlayer.Character.HumanoidRootPart
                            h(v)
                            local VirtualInputManager = game:GetService("VirtualInputManager")
                            VirtualInputManager:SendMouseButtonEvent(620, 662, 0, true, game, 0)
                            VirtualInputManager:SendMouseButtonEvent(620, 662, 0, false, game, 0)
                            wait()
                        end
                    end
                end
            end
            wait()
        end
    end)

    spawn(function()
        while BunENE do
            if BunQE then
                for i,v in pairs(game.Players:GetPlayers()) do
                    if v ~= player and pcall(function() return v.Character.HumanoidRootPart end) and player:DistanceFromCharacter(v.Character.HumanoidRootPart.Position) < tonumber(BunQSR) then
                        if pcall(function() return v.Character.Part,player.Character.Part end) and v.Character.Part.Color ~= player.Character.Part.Color or not player.Character:FindFirstChild("Part") then
                            hmrp = game.Players.LocalPlayer.Character.HumanoidRootPart
                            stare2(v,1)
                            keypress(0x51) --Q
                            keyrelease(0x51)
                            wait()
                        end
                    end
                end
            end
            wait()
        end
    end)

    spawn(function()
        while BunENE do
            if BunEE then
                for i,v in pairs(game.Players:GetPlayers()) do
                    if v ~= player and pcall(function() return v.Character.HumanoidRootPart end) and player:DistanceFromCharacter(v.Character.HumanoidRootPart.Position) < tonumber(BunESR) then
                        if pcall(function() return v.Character.Part,player.Character.Part end) and v.Character.Part.Color ~= player.Character.Part.Color or not player.Character:FindFirstChild("Part") then
                            hmrp = game.Players.LocalPlayer.Character.HumanoidRootPart
                            stare2(v,2)
                            keypress(0x45) --E
                            keyrelease(0x45)
                            wait()
                        end
                    end
                end
            end
            wait()
        end
    end)

    spawn(function()
        while BunENE do
            if BunFE then
                for i,v in pairs(game.Players:GetPlayers()) do
                    if v ~= player and pcall(function() return v.Character.HumanoidRootPart end) and player:DistanceFromCharacter(v.Character.HumanoidRootPart.Position) < tonumber(BunFSR) then
                        if pcall(function() return v.Character.Part,player.Character.Part end) and v.Character.Part.Color ~= player.Character.Part.Color or not player.Character:FindFirstChild("Part") then
                            hmrp = game.Players.LocalPlayer.Character.HumanoidRootPart
                            local crit = game.Workspace[LocalPlayer.name].Stats.Critical
                            if crit.Value == 100 then
                                stare2(v,1.5)
                                keypress(0x46)
                            end
                            keyrelease(0x46)
                            wait()
                        end
                    end
                end
            end
            wait()
        end
    end)

end)



BunEnable:AddTooltip('Activates Bunny auto attack')

Bun1:AddToggle('BunEn', {
    Text = 'Enable',
    Default = true, -- Default value (true / false)
    Tooltip = 'disabling this will cause the auto attack to stop', -- Information shown when you hover over the toggle
})

Toggles.BunEn:OnChanged(function()
    BunENE = Toggles.BunEn.Value
end)

Bun1:AddToggle('BunLMB', {
    Text = 'Auto LMB',
    Default = true, -- Default value (true / false)
    Tooltip = 'Automatically uses LMB', -- Information shown when you hover over the toggle
})

Toggles.BunLMB:OnChanged(function()
    BunLMBE = Toggles.BunLMB.Value
end)

Bun1:AddToggle('BunQ', {
    Text = 'Auto Q',
    Default = false, -- Default value (true / false)
    Tooltip = 'Automatically uses Q skill (not recommended)', -- Information shown when you hover over the toggle
})

Toggles.BunQ:OnChanged(function()
    BunQE = Toggles.BunQ.Value
end)

Bun1:AddToggle('BunE', {
    Text = 'Auto E',
    Default = false, -- Default value (true / false)
    Tooltip = 'why', -- Information shown when you hover over the toggle
})

Toggles.BunE:OnChanged(function()
    BunEE = Toggles.BunE.Value
end)

Bun1:AddToggle('BunF', {
    Text = 'Auto F',
    Default = true, -- Default value (true / false)
    Tooltip = 'Automatically uses F skill', -- Information shown when you hover over the toggle
})

Toggles.BunF:OnChanged(function()
    BunFE = Toggles.BunF.Value
end)

Bun2:AddSlider('BunLMBS', {
    Text = 'LMB range',
    Default = 8,
    Min = 1,
    Max = 13,
    Rounding = 0,

    Compact = false, -- If set to true, then it will hide the label
})

Options.BunLMBS:OnChanged(function()
    BunLMBR = Options.BunLMBS.Value
end)

Bun2:AddSlider('BunQS', {
    Text = 'Q skill range',
    Default = 0,
    Min = 0,
    Max = 50,
    Rounding = 0,

    Compact = false, -- If set to true, then it will hide the label
})

Options.BunQS:OnChanged(function()
    BunQSR = Options.BunQS.Value
end)

Bun2:AddSlider('BunES', {
    Text = 'E skill range',
    Default = 0,
    Min = 0,
    Max = 20,
    Rounding = 0,

    Compact = false, -- If set to true, then it will hide the label
})

Options.BunES:OnChanged(function()
    BunESR = Options.BunES.Value
end)

Bun2:AddSlider('BunFS', {
    Text = 'F skill range',
    Default = 25,
    Min = 1,
    Max = 35,
    Rounding = 1,

    Compact = false, 
})

Options.BunFS:OnChanged(function()
    BunFSR = Options.BunFS.Value
end)

-- UI Settings
local MenuGroup = Tabs['UI Settings']:AddLeftGroupbox('Menu')

-- I set NoUI so it does not show up in the keybinds menu
MenuGroup:AddButton('Unload', function() Library:Unload() end)
MenuGroup:AddLabel('Menu bind'):AddKeyPicker('MenuKeybind', { Default = 'End', NoUI = true, Text = 'Menu keybind' }) 

Library.ToggleKeybind = Options.MenuKeybind -- Allows you to have a custom keybind for the menu

-- Addons:
-- SaveManager (Allows you to have a configuration system)
-- ThemeManager (Allows you to have a menu theme system)

-- Hand the library over to our managers
ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)

-- Ignore keys that are used by ThemeManager. 
-- (we dont want configs to save themes, do we?)
SaveManager:IgnoreThemeSettings() 

-- Adds our MenuKeybind to the ignore list 
-- (do you want each config to have a different menu key? probably not.)
SaveManager:SetIgnoreIndexes({ 'MenuKeybind' }) 

-- use case for doing it this way: 
-- a script hub could have themes in a global folder
-- and game configs in a separate folder per game
ThemeManager:SetFolder('MyScriptHub')
SaveManager:SetFolder('MyScriptHub/specific-game')

-- Builds our config menu on the right side of our tab
SaveManager:BuildConfigSection(Tabs['UI Settings']) 

-- Builds our theme menu (with plenty of built in themes) on the left side
-- NOTE: you can also call ThemeManager:ApplyToGroupbox to add it to a specific groupbox
ThemeManager:ApplyToTab(Tabs['UI Settings'])

-- You can use the SaveManager:LoadAutoloadConfig() to load a config 
-- which has been marked to be one that auto loads!
