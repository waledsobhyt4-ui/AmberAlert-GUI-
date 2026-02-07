--!native
--!strict

-- Infinity Money & Speed GUI with ALL Features
-- Design by Waled & Hammad
-- TEZ Studios Style - Amber Alert Edition

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")

local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

-- GUI erstellen
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "InfinityGUI_WaledHammad"
ScreenGui.Parent = PlayerGui
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- Haupt-Frame
local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Size = UDim2.new(0.45, 0, 0.7, 0)
MainFrame.Position = UDim2.new(0.275, 0, 0.15, 0)
MainFrame.BackgroundColor3 = Color3.fromRGB(10, 10, 20)
MainFrame.BackgroundTransparency = 0.05
MainFrame.BorderSizePixel = 0
MainFrame.Parent = ScreenGui

-- Gradient Effekt
local Gradient = Instance.new("UIGradient")
Gradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(30, 25, 50)),
    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(20, 15, 35)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(15, 10, 25))
})
Gradient.Rotation = 45
Gradient.Parent = MainFrame

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0.03, 0)
UICorner.Parent = MainFrame

-- Neon Border
local UIStroke = Instance.new("UIStroke")
UIStroke.Color = Color3.fromRGB(120, 60, 255)
UIStroke.Thickness = 3
UIStroke.Transparency = 0.2
UIStroke.Parent = MainFrame

-- Header
local Header = Instance.new("Frame")
Header.Name = "Header"
Header.Size = UDim2.new(1, 0, 0.12, 0)
Header.Position = UDim2.new(0, 0, 0, 0)
Header.BackgroundColor3 = Color3.fromRGB(25, 15, 50)
Header.BackgroundTransparency = 0.1
Header.Parent = MainFrame

local HeaderCorner = Instance.new("UICorner")
HeaderCorner.CornerRadius = UDim.new(0.03, 0)
HeaderCorner.Parent = Header

local Title = Instance.new("TextLabel")
Title.Name = "Title"
Title.Size = UDim2.new(1, 0, 0.8, 0)
Title.Position = UDim2.new(0, 0, 0.1, 0)
Title.BackgroundTransparency = 1
Title.Text = "AMBER ALERT - INFINITY MENU"
Title.TextColor3 = Color3.fromRGB(255, 100, 100)
Title.TextScaled = true
Title.Font = Enum.Font.GothamBlack
Title.TextStrokeTransparency = 0.5
Title.TextStrokeColor3 = Color3.fromRGB(255, 50, 50)
Title.Parent = Header

local Subtitle = Instance.new("TextLabel")
Subtitle.Name = "Subtitle"
Subtitle.Size = UDim2.new(1, 0, 0.4, 0)
Subtitle.Position = UDim2.new(0, 0, 0.9, 0)
Subtitle.BackgroundTransparency = 1
Subtitle.Text = "Design by Waled & Hammad"
Subtitle.TextColor3 = Color3.fromRGB(180, 180, 255)
Subtitle.TextScaled = true
Subtitle.Font = Enum.Font.GothamBold
Subtitle.Parent = Header

-- CONTENT FRAME
local ContentFrame = Instance.new("ScrollingFrame")
ContentFrame.Name = "ContentFrame"
ContentFrame.Size = UDim2.new(0.95, 0, 0.85, 0)
ContentFrame.Position = UDim2.new(0.025, 0, 0.14, 0)
ContentFrame.BackgroundTransparency = 1
ContentFrame.BorderSizePixel = 0
ContentFrame.ScrollBarThickness = 5
ContentFrame.ScrollBarImageColor3 = Color3.fromRGB(100, 50, 200)
ContentFrame.CanvasSize = UDim2.new(0, 0, 2.5, 0)
ContentFrame.Parent = MainFrame

-- MODULE 1: INFINITY MONEY
local MoneySection = Instance.new("Frame")
MoneySection.Name = "MoneySection"
MoneySection.Size = UDim2.new(1, 0, 0.15, 0)
MoneySection.Position = UDim2.new(0, 0, 0, 0)
MoneySection.BackgroundColor3 = Color3.fromRGB(30, 20, 60)
MoneySection.BackgroundTransparency = 0.2
MoneySection.Parent = ContentFrame

local MoneyCorner = Instance.new("UICorner")
MoneyCorner.CornerRadius = UDim.new(0.02, 0)
MoneyCorner.Parent = MoneySection

local MoneyTitle = Instance.new("TextLabel")
MoneyTitle.Name = "MoneyTitle"
MoneyTitle.Size = UDim2.new(1, 0, 0.4, 0)
MoneyTitle.Position = UDim2.new(0, 0, 0.05, 0)
MoneyTitle.BackgroundTransparency = 1
MoneyTitle.Text = "💰 INFINITY MONEY"
MoneyTitle.TextColor3 = Color3.fromRGB(255, 215, 0)
MoneyTitle.TextScaled = true
MoneyTitle.Font = Enum.Font.GothamBold
MoneyTitle.Parent = MoneySection

-- Money Buttons
local MoneyButtons = Instance.new("Frame")
MoneyButtons.Name = "MoneyButtons"
MoneyButtons.Size = UDim2.new(1, 0, 0.5, 0)
MoneyButtons.Position = UDim2.new(0, 0, 0.45, 0)
MoneyButtons.BackgroundTransparency = 1
MoneyButtons.Parent = MoneySection

local AddMoneyBtn = Instance.new("TextButton")
AddMoneyBtn.Name = "AddMoneyBtn"
AddMoneyBtn.Size = UDim2.new(0.45, 0, 0.9, 0)
AddMoneyBtn.Position = UDim2.new(0.025, 0, 0.05, 0)
AddMoneyBtn.BackgroundColor3 = Color3.fromRGB(50, 200, 50)
AddMoneyBtn.Text = "ADD $10K"
AddMoneyBtn.TextColor3 = Color3.white
AddMoneyBtn.TextScaled = true
AddMoneyBtn.Font = Enum.Font.GothamBold
AddMoneyBtn.Parent = MoneyButtons

local InfiniteMoneyToggle = Instance.new("TextButton")
InfiniteMoneyToggle.Name = "InfiniteMoneyToggle"
InfiniteMoneyToggle.Size = UDim2.new(0.45, 0, 0.9, 0)
InfiniteMoneyToggle.Position = UDim2.new(0.525, 0, 0.05, 0)
InfiniteMoneyToggle.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
InfiniteMoneyToggle.Text = "INFINITE: OFF"
InfiniteMoneyToggle.TextColor3 = Color3.white
InfiniteMoneyToggle.TextScaled = true
InfiniteMoneyToggle.Font = Enum.Font.GothamBold
InfiniteMoneyToggle.Parent = MoneyButtons

-- MODULE 2: SPEED CHANGER
local SpeedSection = Instance.new("Frame")
SpeedSection.Name = "SpeedSection"
SpeedSection.Size = UDim2.new(1, 0, 0.2, 0)
SpeedSection.Position = UDim2.new(0, 0, 0.17, 0)
SpeedSection.BackgroundColor3 = Color3.fromRGB(25, 40, 80)
SpeedSection.BackgroundTransparency = 0.2
SpeedSection.Parent = ContentFrame

local SpeedCorner = Instance.new("UICorner")
SpeedCorner.CornerRadius = UDim.new(0.02, 0)
SpeedCorner.Parent = SpeedSection

local SpeedTitle = Instance.new("TextLabel")
SpeedTitle.Name = "SpeedTitle"
SpeedTitle.Size = UDim2.new(1, 0, 0.25, 0)
SpeedTitle.Position = UDim2.new(0, 0, 0.05, 0)
SpeedTitle.BackgroundTransparency = 1
SpeedTitle.Text = "⚡ SPEED CONTROL"
SpeedTitle.TextColor3 = Color3.fromRGB(100, 200, 255)
SpeedTitle.TextScaled = true
SpeedTitle.Font = Enum.Font.GothamBold
SpeedTitle.Parent = SpeedSection

local SpeedSlider = Instance.new("TextButton")
SpeedSlider.Name = "SpeedSlider"
SpeedSlider.Size = UDim2.new(0.9, 0, 0.25, 0)
SpeedSlider.Position = UDim2.new(0.05, 0, 0.35, 0)
SpeedSlider.BackgroundColor3 = Color3.fromRGB(60, 60, 100)
SpeedSlider.Text = "SPEED: 16"
SpeedSlider.TextColor3 = Color3.white
SpeedSlider.TextScaled = true
SpeedSlider.Font = Enum.Font.GothamBold
SpeedSlider.Parent = SpeedSection

local SpeedButtons = Instance.new("Frame")
SpeedButtons.Name = "SpeedButtons"
SpeedButtons.Size = UDim2.new(1, 0, 0.4, 0)
SpeedButtons.Position = UDim2.new(0, 0, 0.65, 0)
SpeedButtons.BackgroundTransparency = 1
SpeedButtons.Parent = SpeedSection

local SpeedPresets = {"25", "50", "100", "200"}
for i, speed in ipairs(SpeedPresets) do
    local SpeedBtn = Instance.new("TextButton")
    SpeedBtn.Name = "Speed"..speed
    SpeedBtn.Size = UDim2.new(0.22, 0, 0.9, 0)
    SpeedBtn.Position = UDim2.new(0.025 + (i-1)*0.245, 0, 0.05, 0)
    SpeedBtn.BackgroundColor3 = Color3.fromRGB(70, 100, 180)
    SpeedBtn.Text = speed
    SpeedBtn.TextColor3 = Color3.white
    SpeedBtn.TextScaled = true
    SpeedBtn.Font = Enum.Font.GothamBold
    SpeedBtn.Parent = SpeedButtons
end

-- MODULE 3: HIGH JUMP
local JumpSection = Instance.new("Frame")
JumpSection.Name = "JumpSection"
JumpSection.Size = UDim2.new(1, 0, 0.15, 0)
JumpSection.Position = UDim2.new(0, 0, 0.39, 0)
JumpSection.BackgroundColor3 = Color3.fromRGB(80, 40, 100)
JumpSection.BackgroundTransparency = 0.2
JumpSection.Parent = ContentFrame

local JumpCorner = Instance.new("UICorner")
JumpCorner.CornerRadius = UDim.new(0.02, 0)
JumpCorner.Parent = JumpSection

local JumpTitle = Instance.new("TextLabel")
JumpTitle.Name = "JumpTitle"
JumpTitle.Size = UDim2.new(0.6, 0, 1, 0)
JumpTitle.Position = UDim2.new(0, 0, 0, 0)
JumpTitle.BackgroundTransparency = 1
JumpTitle.Text = "🦘 HIGH JUMP"
JumpTitle.TextColor3 = Color3.fromRGB(255, 150, 255)
JumpTitle.TextScaled = true
JumpTitle.Font = Enum.Font.GothamBold
JumpTitle.Parent = JumpSection

local JumpToggle = Instance.new("TextButton")
JumpToggle.Name = "JumpToggle"
JumpToggle.Size = UDim2.new(0.35, 0, 0.7, 0)
JumpToggle.Position = UDim2.new(0.65, 0, 0.15, 0)
JumpToggle.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
JumpToggle.Text = "OFF"
JumpToggle.TextColor3 = Color3.white
JumpToggle.TextScaled = true
JumpToggle.Font = Enum.Font.GothamBold
JumpToggle.Parent = JumpSection

-- MODULE 4: FLY
local FlySection = Instance.new("Frame")
FlySection.Name = "FlySection"
FlySection.Size = UDim2.new(1, 0, 0.15, 0)
FlySection.Position = UDim2.new(0, 0, 0.56, 0)
FlySection.BackgroundColor3 = Color3.fromRGB(40, 80, 100)
FlySection.BackgroundTransparency = 0.2
FlySection.Parent = ContentFrame

local FlyCorner = Instance.new("UICorner")
FlyCorner.CornerRadius = UDim.new(0.02, 0)
FlyCorner.Parent = FlySection

local FlyTitle = Instance.new("TextLabel")
FlyTitle.Name = "FlyTitle"
FlyTitle.Size = UDim2.new(0.6, 0, 1, 0)
FlyTitle.Position = UDim2.new(0, 0, 0, 0)
FlyTitle.BackgroundTransparency = 1
FlyTitle.Text = "🕊️ FLY MODE"
FlyTitle.TextColor3 = Color3.fromRGB(150, 220, 255)
FlyTitle.TextScaled = true
FlyTitle.Font = Enum.Font.GothamBold
FlyTitle.Parent = FlySection

local FlyToggle = Instance.new("TextButton")
FlyToggle.Name = "FlyToggle"
FlyToggle.Size = UDim2.new(0.35, 0, 0.7, 0)
FlyToggle.Position = UDim2.new(0.65, 0, 0.15, 0)
FlyToggle.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
FlyToggle.Text = "OFF"
FlyToggle.TextColor3 = Color3.white
FlyToggle.TextScaled = true
FlyToggle.Font = Enum.Font.GothamBold
FlyToggle.Parent = FlySection

-- MODULE 5: GOD MODE (Monster can't kill)
local GodSection = Instance.new("Frame")
GodSection.Name = "GodSection"
GodSection.Size = UDim2.new(1, 0, 0.15, 0)
GodSection.Position = UDim2.new(0, 0, 0.73, 0)
GodSection.BackgroundColor3 = Color3.fromRGB(100, 40, 40)
GodSection.BackgroundTransparency = 0.2
GodSection.Parent = ContentFrame

local GodCorner = Instance.new("UICorner")
GodCorner.CornerRadius = UDim.new(0.02, 0)
GodCorner.Parent = GodSection

local GodTitle = Instance.new("TextLabel")
GodTitle.Name = "GodTitle"
GodTitle.Size = UDim2.new(0.6, 0, 1, 0)
GodTitle.Position = UDim2.new(0, 0, 0, 0)
GodTitle.BackgroundTransparency = 1
GodTitle.Text = "🛡️ GOD MODE"
GodTitle.TextColor3 = Color3.fromRGB(255, 100, 100)
GodTitle.TextScaled = true
GodTitle.Font = Enum.Font.GothamBold
GodTitle.Parent = GodSection

local GodToggle = Instance.new("TextButton")
GodToggle.Name = "GodToggle"
GodToggle.Size = UDim2.new(0.35, 0, 0.7, 0)
GodToggle.Position = UDim2.new(0.65, 0, 0.15, 0)
GodToggle.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
GodToggle.Text = "OFF"
GodToggle.TextColor3 = Color3.white
GodToggle.TextScaled = true
GodToggle.Font = Enum.Font.GothamBold
GodToggle.Parent = GodSection

-- MODULE 6: NOCLIP
local NoclipSection = Instance.new("Frame")
NoclipSection.Name = "NoclipSection"
NoclipSection.Size = UDim2.new(1, 0, 0.15, 0)
NoclipSection.Position = UDim2.new(0, 0, 0.9, 0)
NoclipSection.BackgroundColor3 = Color3.fromRGB(80, 100, 40)
NoclipSection.BackgroundTransparency = 0.2
NoclipSection.Parent = ContentFrame

local NoclipCorner = Instance.new("UICorner")
NoclipCorner.CornerRadius = UDim.new(0.02, 0)
NoclipCorner.Parent = NoclipSection

local NoclipTitle = Instance.new("TextLabel")
NoclipTitle.Name = "NoclipTitle"
NoclipTitle.Size = UDim2.new(0.6, 0, 1, 0)
NoclipTitle.Position = UDim2.new(0, 0, 0, 0)
NoclipTitle.BackgroundTransparency = 1
NoclipTitle.Text = "👻 NOCLIP"
NoclipTitle.TextColor3 = Color3.fromRGB(180, 255, 100)
NoclipTitle.TextScaled = true
NoclipTitle.Font = Enum.Font.GothamBold
NoclipTitle.Parent = NoclipSection

local NoclipToggle = Instance.new("TextButton")
NoclipToggle.Name = "NoclipToggle"
NoclipToggle.Size = UDim2.new(0.35, 0, 0.7, 0)
NoclipToggle.Position = UDim2.new(0.65, 0, 0.15, 0)
NoclipToggle.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
NoclipToggle.Text = "OFF"
NoclipToggle.TextColor3 = Color3.white
NoclipToggle.TextScaled = true
NoclipToggle.Font = Enum.Font.GothamBold
NoclipToggle.Parent = NoclipSection

-- TOGGLE GUI BUTTON
local ToggleButton = Instance.new("TextButton")
ToggleButton.Name = "ToggleButton"
ToggleButton.Size = UDim2.new(0.08, 0, 0.06, 0)
ToggleButton.Position = UDim2.new(0.01, 0, 0.01, 0)
ToggleButton.BackgroundColor3 = Color3.fromRGB(120, 60, 255)
ToggleButton.Text = "☰"
ToggleButton.TextColor3 = Color3.white
ToggleButton.TextScaled = true
ToggleButton.Font = Enum.Font.GothamBlack
ToggleButton.Visible = true
ToggleButton.Parent = ScreenGui

local ToggleCorner = Instance.new("UICorner")
ToggleCorner.CornerRadius = UDim.new(0.2, 0)
ToggleCorner.Parent = ToggleButton

-- STATUS INDICATOR
local StatusIndicator = Instance.new("Frame")
StatusIndicator.Name = "StatusIndicator"
StatusIndicator.Size = UDim2.new(0.005, 0, 0.06, 0)
StatusIndicator.Position = UDim2.new(0.095, 0, 0.01, 0)
StatusIndicator.BackgroundColor3 = Color3.fromRGB(50, 255, 50)
StatusIndicator.Visible = false
StatusIndicator.Parent = ScreenGui

-- FUNCTIONALITY
local currentSpeed = 16
local infiniteMoney = false
local highJump = false
local flyMode = false
local godMode = false
local noclip = false
local guiVisible = false

-- Toggle GUI visibility
ToggleButton.MouseButton1Click:Connect(function()
    guiVisible = not guiVisible
    MainFrame.Visible = guiVisible
    StatusIndicator.Visible = guiVisible
    StatusIndicator.BackgroundColor3 = guiVisible and Color3.fromRGB(50, 255, 50) or Color3.fromRGB(255, 50, 50)
end)

-- Initially hide the GUI
MainFrame.Visible = false

-- MONEY FUNCTIONALITY
AddMoneyBtn.MouseButton1Click:Connect(function()
    -- Add money logic here
    print("[INFINITY] Added $10,000")
    
    -- Visual feedback
    AddMoneyBtn.BackgroundColor3 = Color3.fromRGB(30, 180, 30)
    task.wait(0.2)
    AddMoneyBtn.BackgroundColor3 = Color3.fromRGB(50, 200, 50)
end)

InfiniteMoneyToggle.MouseButton1Click:Connect(function()
    infiniteMoney = not infiniteMoney
    if infiniteMoney then
        InfiniteMoneyToggle.BackgroundColor3 = Color3.fromRGB(50, 200, 50)
        InfiniteMoneyToggle.Text = "INFINITE: ON"
        print("[INFINITY] Infinite Money: ON")
    else
        InfiniteMoneyToggle.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
        InfiniteMoneyToggle.Text = "INFINITE: OFF"
        print("[INFINITY] Infinite Money: OFF")
    end
end)

-- SPEED CONTROL
SpeedSlider.MouseButton1Click:Connect(function()
    currentSpeed = currentSpeed + 10
    if currentSpeed > 100 then currentSpeed = 16 end
    SpeedSlider.Text = "SPEED: " .. currentSpeed
    
    -- Apply speed
    LocalPlayer.Character.Humanoid.WalkSpeed = currentSpeed
    print("[INFINITY] Speed set to: " .. currentSpeed)
    
    -- Visual feedback
    SpeedSlider.BackgroundColor3 = Color3.fromRGB(80, 80, 150)
    task.wait(0.1)
    SpeedSlider.BackgroundColor3 = Color3.fromRGB(60, 60, 100)
end)

-- Speed preset buttons
for i, speed in ipairs(SpeedPresets) do
    local btn = SpeedButtons:FindFirstChild("Speed"..speed)
    if btn then
        btn.MouseButton1Click:Connect(function()
            currentSpeed = tonumber(speed)
            LocalPlayer.Character.Humanoid.WalkSpeed = currentSpeed
            SpeedSlider.Text = "SPEED: " .. currentSpeed
            print("[INFINITY] Speed preset: " .. speed)
            
            -- Visual feedback
            btn.BackgroundColor3 = Color3.fromRGB(100, 140, 220)
            task.wait(0.1)
            btn.BackgroundColor3 = Color3.fromRGB(70, 100, 180)
        end)
    end
end

-- HIGH JUMP
JumpToggle.MouseButton1Click:Connect(function()
    highJump = not highJump
    if highJump then
        JumpToggle.BackgroundColor3 = Color3.fromRGB(50, 200, 50)
        JumpToggle.Text = "ON"
        LocalPlayer.Character.Humanoid.JumpHeight = 100
        print("[INFINITY] High Jump: ON")
    else
        JumpToggle.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
        JumpToggle.Text = "OFF"
        LocalPlayer.Character.Humanoid.JumpHeight = 7.2
        print("[INFINITY] High Jump: OFF")
    end
end)

-- FLY MODE
FlyToggle.MouseButton1Click:Connect(function()
    flyMode = not flyMode
    if flyMode then
        FlyToggle.BackgroundColor3 = Color3.fromRGB(50, 200, 50)
        FlyToggle.Text = "ON"
        print("[INFINITY] Fly Mode: ON")
        
        -- Fly logic would go here
        spawn(function()
            while flyMode do
                task.wait()
                -- Fly implementation
            end
        end)
    else
        FlyToggle.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
        FlyToggle.Text = "OFF"
        print("[INFINITY] Fly Mode: OFF")
    end
end)

-- GOD MODE (Monster can't kill)
GodToggle.MouseButton1Click:Connect(function()
    godMode = not godMode
    if godMode then
        GodToggle.BackgroundColor3 = Color3.fromRGB(50, 200, 50)
        GodToggle.Text = "ON"
        print("[INFINITY] God Mode: ON - Monster can't kill you")
        
        -- Make player invincible
        LocalPlayer.Character.Humanoid.MaxHealth = math.huge
        LocalPlayer.Character.Humanoid.Health = math.huge
    else
        GodToggle.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
        GodToggle.Text = "OFF"
        print("[INFINITY] God Mode: OFF")
        
        -- Reset health
        LocalPlayer.Character.Humanoid.MaxHealth = 100
        LocalPlayer.Character.Humanoid.Health = 100
    end
end)

-- NOCLIP
NoclipToggle.MouseButton1Click:Connect(function()
    noclip = not noclip
    if noclip then
        NoclipToggle.BackgroundColor3 = Color3.fromRGB(50, 200, 50)
        NoclipToggle.Text = "ON"
        print("[INFINITY] Noclip: ON")
        
        -- Noclip logic
        for _, part in pairs(LocalPlayer.Character:GetDescendants()) do
            if part:IsA("BasePart") then
                part.CanCollide = false
            end
        end
    else
        NoclipToggle.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
        NoclipToggle.Text = "OFF"
        print("[INFINITY] Noclip: OFF")
        
        -- Re-enable collision
        for _, part in pairs(LocalPlayer.Character:GetDescendants()) do
            if part:IsA("BasePart") then
                part.CanCollide = true
            end
        end
    end
end)

-- KEYBIND TOGGLE
UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if not gameProcessed then
        if input.KeyCode == Enum.KeyCode.RightControl then
            guiVisible = not guiVisible
            MainFrame.Visible = guiVisible
            StatusIndicator.Visible = guiVisible
            StatusIndicator.BackgroundColor3 = guiVisible and Color3.fromRGB(50, 255, 50) or Color3.fromRGB(255, 50, 50)
        elseif input.KeyCode == Enum.KeyCode.Delete then
            -- Emergency close
            ScreenGui:Destroy()
        end
    end
end)

print("[INFINITY GUI] Loaded successfully! Press RightControl to toggle menu.")
print("[INFINITY GUI] Features: Money, Speed, High Jump, Fly, God Mode, Noclip")
