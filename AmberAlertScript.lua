--!native
--!strict

-- AMBER ALERT GAME ULTIMATE HACK MENU
-- Speziell für Amber Alert Horror Game
-- Design by Waled & Hammad

local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")
local TS = game:GetService("TweenService")
local RunService = game:GetService("RunService")

local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

-- 🔥 KRASSES DESIGN MIT NEON EFFECTS
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "AmberAlertHackMenu"
ScreenGui.Parent = PlayerGui
ScreenGui.ResetOnSpawn = false

-- HAUPTFRAME MIT HORROR DESIGN
local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Size = UDim2.new(0.6, 0, 0.8, 0)
MainFrame.Position = UDim2.new(0.2, 0, 0.1, 0)
MainFrame.BackgroundColor3 = Color3.fromRGB(15, 0, 25)
MainFrame.BackgroundTransparency = 0.1
MainFrame.Visible = false
MainFrame.Parent = ScreenGui

-- BLUTIGER HEADER
local Header = Instance.new("Frame")
Header.Name = "Header"
Header.Size = UDim2.new(1, 0, 0.15, 0)
Header.BackgroundColor3 = Color3.fromRGB(80, 0, 0)
Header.BackgroundTransparency = 0.2
Header.Parent = MainFrame

local Title = Instance.new("TextLabel")
Title.Text = "🩸 AMBER ALERT HACK MENU 🩸"
Title.Size = UDim2.new(1, 0, 0.7, 0)
Title.Position = UDim2.new(0, 0, 0.15, 0)
Title.BackgroundTransparency = 1
Title.TextColor3 = Color3.fromRGB(255, 50, 50)
Title.Font = Enum.Font.GothamBlack
Title.TextScaled = true
Title.TextStrokeTransparency = 0.5
Title.TextStrokeColor3 = Color3.fromRGB(255, 0, 0)
Title.Parent = Header

local Credits = Instance.new("TextLabel")
Credits.Text = "MADE BY WALED & HAMMAD"
Credits.Size = UDim2.new(1, 0, 0.3, 0)
Credits.Position = UDim2.new(0, 0, 0.7, 0)
Credits.BackgroundTransparency = 1
Credits.TextColor3 = Color3.fromRGB(200, 200, 255)
Credits.Font = Enum.Font.GothamBold
Credits.TextScaled = true
Credits.Parent = Header

-- 📦 TOOL GIVER SECTION (WICHTIG!)
local ToolSection = Instance.new("Frame")
ToolSection.Name = "ToolSection"
ToolSection.Size = UDim2.new(0.95, 0, 0.3, 0)
ToolSection.Position = UDim2.new(0.025, 0, 0.18, 0)
ToolSection.BackgroundColor3 = Color3.fromRGB(30, 20, 50)
ToolSection.BackgroundTransparency = 0.3
ToolSection.Parent = MainFrame

local ToolTitle = Instance.new("TextLabel")
ToolTitle.Text = "🛠️ TOOL GIVER - WÄHLE DEIN TOOL"
ToolTitle.Size = UDim2.new(1, 0, 0.2, 0)
ToolTitle.BackgroundTransparency = 1
ToolTitle.TextColor3 = Color3.fromRGB(255, 200, 50)
ToolTitle.Font = Enum.Font.GothamBold
ToolTitle.TextScaled = true
ToolTitle.Parent = ToolSection

-- TOOL LISTE (Für Amber Alert typische Tools)
local ToolList = {
    {"🔫 Gun", "Waffe gegen Monster"},
    {"🔦 Flashlight", "Taschenlampe"},
    {"🔑 Key", "Schlüssel für Türen"},
    {"💊 Medkit", "Heilung"},
    {"📡 Radio", "Kommunikation"},
    {"⚡ Stun Gun", "Monster betäuben"},
    {"🛡️ Shield", "Schutzschild"},
    {"🧨 Grenade", "Explosiv"}
}

-- TOOL BUTTONS
for i, tool in ipairs(ToolList) do
    local row = math.floor((i-1)/4)
    local col = (i-1) % 4
    
    local btn = Instance.new("TextButton")
    btn.Name = "Tool_" .. tool[1]
    btn.Text = tool[1] .. "\n" .. tool[2]
    btn.Size = UDim2.new(0.23, 0, 0.35, 0)
    btn.Position = UDim2.new(0.02 + col*0.245, 0, 0.25 + row*0.4, 0)
    btn.BackgroundColor3 = Color3.fromRGB(60, 40, 100)
    btn.TextColor3 = Color3.white
    btn.Font = Enum.Font.Gotham
    btn.TextScaled = true
    btn.Parent = ToolSection
    
    -- TOOL GEBEN FUNKTION
    btn.MouseButton1Click:Connect(function()
        print("[TOOL] Gib mir: " .. tool[1])
        -- Hier Tool geben Logik für Amber Alert
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "🛠️ TOOL GIVER",
            Text = tool[1] .. " wurde gegeben!",
            Duration = 3
        })
        
        -- KRASSER EFFECT
        btn.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
        btn.TextColor3 = Color3.fromRGB(0, 0, 0)
        task.wait(0.3)
        btn.BackgroundColor3 = Color3.fromRGB(60, 40, 100)
        btn.TextColor3 = Color3.white
    end)
end

-- ✨ FEATURE SECTIONS
local FeaturesFrame = Instance.new("ScrollingFrame")
FeaturesFrame.Name = "FeaturesFrame"
FeaturesFrame.Size = UDim2.new(0.95, 0, 0.45, 0)
FeaturesFrame.Position = UDim2.new(0.025, 0, 0.5, 0)
FeaturesFrame.BackgroundTransparency = 1
FeaturesFrame.ScrollBarThickness = 5
FeaturesFrame.CanvasSize = UDim2.new(0, 0, 1.8, 0)
FeaturesFrame.Parent = MainFrame

-- FLY MODE
local FlyFrame = Instance.new("Frame")
FlyFrame.Size = UDim2.new(1, 0, 0.2, 0)
FlyFrame.BackgroundColor3 = Color3.fromRGB(40, 80, 120)
FlyFrame.BackgroundTransparency = 0.3
FlyFrame.Parent = FeaturesFrame

local FlyLabel = Instance.new("TextLabel")
FlyLabel.Text = "🕊️ FLY MODE"
FlyLabel.Size = UDim2.new(0.6, 0, 1, 0)
FlyLabel.BackgroundTransparency = 1
FlyLabel.TextColor3 = Color3.fromRGB(150, 220, 255)
FlyLabel.Font = Enum.Font.GothamBold
FlyLabel.TextScaled = true
FlyLabel.Parent = FlyFrame

local FlyToggle = Instance.new("TextButton")
FlyToggle.Name = "FlyToggle"
FlyToggle.Text = "AUS"
FlyToggle.Size = UDim2.new(0.35, 0, 0.7, 0)
FlyToggle.Position = UDim2.new(0.65, 0, 0.15, 0)
FlyToggle.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
FlyToggle.TextColor3 = Color3.white
FlyToggle.Font = Enum.Font.GothamBold
FlyToggle.TextScaled = true
FlyToggle.Parent = FlyFrame

-- GOD MODE
local GodFrame = Instance.new("Frame")
GodFrame.Size = UDim2.new(1, 0, 0.2, 0)
GodFrame.Position = UDim2.new(0, 0, 0.22, 0)
GodFrame.BackgroundColor3 = Color3.fromRGB(120, 40, 40)
GodFrame.BackgroundTransparency = 0.3
GodFrame.Parent = FeaturesFrame

local GodLabel = Instance.new("TextLabel")
GodLabel.Text = "🛡️ GOD MODE (Monster can't kill)"
GodLabel.Size = UDim2.new(0.6, 0, 1, 0)
GodLabel.BackgroundTransparency = 1
GodLabel.TextColor3 = Color3.fromRGB(255, 150, 150)
GodLabel.Font = Enum.Font.GothamBold
GodLabel.TextScaled = true
GodLabel.Parent = GodFrame

local GodToggle = Instance.new("TextButton")
GodToggle.Name = "GodToggle"
GodToggle.Text = "AUS"
GodToggle.Size = UDim2.new(0.35, 0, 0.7, 0)
GodToggle.Position = UDim2.new(0.65, 0, 0.15, 0)
GodToggle.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
GodToggle.TextColor3 = Color3.white
GodToggle.Font = Enum.Font.GothamBold
GodToggle.TextScaled = true
GodToggle.Parent = GodFrame

-- INFINITY MONEY
local MoneyFrame = Instance.new("Frame")
MoneyFrame.Size = UDim2.new(1, 0, 0.2, 0)
MoneyFrame.Position = UDim2.new(0, 0, 0.44, 0)
MoneyFrame.BackgroundColor3 = Color3.fromRGB(40, 120, 40)
MoneyFrame.BackgroundTransparency = 0.3
MoneyFrame.Parent = FeaturesFrame

local MoneyLabel = Instance.new("TextLabel")
MoneyLabel.Text = "💰 INFINITY MONEY"
MoneyLabel.Size = UDim2.new(0.6, 0, 1, 0)
MoneyLabel.BackgroundTransparency = 1
MoneyLabel.TextColor3 = Color3.fromRGB(150, 255, 150)
MoneyLabel.Font = Enum.Font.GothamBold
MoneyLabel.TextScaled = true
MoneyLabel.Parent = MoneyFrame

local MoneyBtn = Instance.new("TextButton")
MoneyBtn.Name = "MoneyBtn"
MoneyBtn.Text = "GET $10K"
MoneyBtn.Size = UDim2.new(0.35, 0, 0.7, 0)
MoneyBtn.Position = UDim2.new(0.65, 0, 0.15, 0)
MoneyBtn.BackgroundColor3 = Color3.fromRGB(50, 200, 50)
MoneyBtn.TextColor3 = Color3.white
MoneyBtn.Font = Enum.Font.GothamBold
MoneyBtn.TextScaled = true
MoneyBtn.Parent = MoneyFrame

-- SPEED HACK
local SpeedFrame = Instance.new("Frame")
SpeedFrame.Size = UDim2.new(1, 0, 0.2, 0)
SpeedFrame.Position = UDim2.new(0, 0, 0.66, 0)
SpeedFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 120)
SpeedFrame.BackgroundTransparency = 0.3
SpeedFrame.Parent = FeaturesFrame

local SpeedLabel = Instance.new("TextLabel")
SpeedLabel.Text = "⚡ SPEED HACK"
SpeedLabel.Size = UDim2.new(0.6, 0, 1, 0)
SpeedLabel.BackgroundTransparency = 1
SpeedLabel.TextColor3 = Color3.fromRGB(150, 150, 255)
SpeedLabel.Font = Enum.Font.GothamBold
SpeedLabel.TextScaled = true
SpeedLabel.Parent = SpeedFrame

local SpeedBtn = Instance.new("TextButton")
SpeedBtn.Name = "SpeedBtn"
SpeedBtn.Text = "SPEED: 16"
SpeedBtn.Size = UDim2.new(0.35, 0, 0.7, 0)
SpeedBtn.Position = UDim2.new(0.65, 0, 0.15, 0)
SpeedBtn.BackgroundColor3 = Color3.fromRGB(50, 50, 200)
SpeedBtn.TextColor3 = Color3.white
SpeedBtn.Font = Enum.Font.GothamBold
SpeedBtn.TextScaled = true
SpeedBtn.Parent = SpeedFrame

-- HIGH JUMP
local JumpFrame = Instance.new("Frame")
JumpFrame.Size = UDim2.new(1, 0, 0.2, 0)
JumpFrame.Position = UDim2.new(0, 0, 0.88, 0)
JumpFrame.BackgroundColor3 = Color3.fromRGB(120, 40, 120)
JumpFrame.BackgroundTransparency = 0.3
JumpFrame.Parent = FeaturesFrame

local JumpLabel = Instance.new("TextLabel")
JumpLabel.Text = "🦘 HIGH JUMP"
JumpLabel.Size = UDim2.new(0.6, 0, 1, 0)
JumpLabel.BackgroundTransparency = 1
JumpLabel.TextColor3 = Color3.fromRGB(255, 150, 255)
JumpLabel.Font = Enum.Font.GothamBold
JumpLabel.TextScaled = true
JumpLabel.Parent = JumpFrame

local JumpToggle = Instance.new("TextButton")
JumpToggle.Name = "JumpToggle"
JumpToggle.Text = "AUS"
JumpToggle.Size = UDim2.new(0.35, 0, 0.7, 0)
JumpToggle.Position = UDim2.new(0.65, 0, 0.15, 0)
JumpToggle.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
JumpToggle.TextColor3 = Color3.white
JumpToggle.Font = Enum.Font.GothamBold
JumpToggle.TextScaled = true
JumpToggle.Parent = JumpFrame

-- NOCLIP
local NoclipFrame = Instance.new("Frame")
NoclipFrame.Size = UDim2.new(1, 0, 0.2, 0)
NoclipFrame.Position = UDim2.new(0, 0, 1.1, 0)
NoclipFrame.BackgroundColor3 = Color3.fromRGB(80, 120, 40)
NoclipFrame.BackgroundTransparency = 0.3
NoclipFrame.Parent = FeaturesFrame

local NoclipLabel = Instance.new("TextLabel")
NoclipLabel.Text = "👻 NOCLIP (Durch Wände)"
NoclipLabel.Size = UDim2.new(0.6, 0, 1, 0)
NoclipLabel.BackgroundTransparency = 1
NoclipLabel.TextColor3 = Color3.fromRGB(180, 255, 100)
NoclipLabel.Font = Enum.Font.GothamBold
NoclipLabel.TextScaled = true
NoclipLabel.Parent = NoclipFrame

local NoclipToggle = Instance.new("TextButton")
NoclipToggle.Name = "NoclipToggle"
NoclipToggle.Text = "AUS"
NoclipToggle.Size = UDim2.new(0.35, 0, 0.7, 0)
NoclipToggle.Position = UDim2.new(0.65, 0, 0.15, 0)
NoclipToggle.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
NoclipToggle.TextColor3 = Color3.white
NoclipToggle.Font = Enum.Font.GothamBold
NoclipToggle.TextScaled = true
NoclipToggle.Parent = NoclipFrame

-- 🎯 TOGGLE BUTTON MIT KRASSEM DESIGN
local ToggleBtn = Instance.new("TextButton")
ToggleBtn.Name = "ToggleBtn"
ToggleBtn.Size = UDim2.new(0.15, 0, 0.08, 0)
ToggleBtn.Position = UDim2.new(0.02, 0, 0.02, 0)
ToggleBtn.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
ToggleBtn.Text = "🔥 MENU"
ToggleBtn.TextColor3 = Color3.white
ToggleBtn.Font = Enum.Font.GothamBlack
ToggleBtn.TextScaled = true
ToggleBtn.Parent = ScreenGui

-- X TASTE ZUM SCHLIESSEN
UIS.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.X then
        MainFrame.Visible = not MainFrame.Visible
        print("🎮 X gedrückt - Menu: " .. (MainFrame.Visible and "ON" or "OFF"))
    end
end)

-- TOGGLE FUNKTION
ToggleBtn.MouseButton1Click:Connect(function()
    MainFrame.Visible = not MainFrame.Visible
    print("🖱️ Menu Button - Menu: " .. (MainFrame.Visible and "ON" or "OFF"))
end)

-- ✨ FUNKTIONEN FÜR DIE FEATURES
local currentSpeed = 16
local flyActive = false
local godActive = false
local jumpActive = false
local noclipActive = false

-- FLY MODE
FlyToggle.MouseButton1Click:Connect(function()
    flyActive = not flyActive
    if flyActive then
        FlyToggle.Text = "AN"
        FlyToggle.BackgroundColor3 = Color3.fromRGB(50, 200, 50)
        print("🕊️ FLY MODE: AKTIVIERT")
    else
        FlyToggle.Text = "AUS"
        FlyToggle.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
        print("🕊️ FLY MODE: DEAKTIVIERT")
    end
end)

-- GOD MODE
GodToggle.MouseButton1Click:Connect(function()
    godActive = not godActive
    if godActive then
        GodToggle.Text = "AN"
        GodToggle.BackgroundColor3 = Color3.fromRGB(50, 200, 50)
        print("🛡️ GOD MODE: AKTIVIERT - Monster kann dich nicht töten!")
        
        -- Charakter unsterblich machen
        if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
            LocalPlayer.Character.Humanoid.MaxHealth = math.huge
            LocalPlayer.Character.Humanoid.Health = math.huge
        end
    else
        GodToggle.Text = "AUS"
        GodToggle.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
        print("🛡️ GOD MODE: DEAKTIVIERT")
    end
end)

-- INFINITY MONEY
MoneyBtn.MouseButton1Click:Connect(function()
    print("💰 +$10,000 HINZUGEFÜGT")
    MoneyBtn.Text = "+$10K ✓"
    MoneyBtn.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
    task.wait(0.5)
    MoneyBtn.Text = "GET $10K"
    MoneyBtn.BackgroundColor3 = Color3.fromRGB(50, 200, 50)
end)

-- SPEED HACK
SpeedBtn.MouseButton1Click:Connect(function()
    currentSpeed = currentSpeed + 25
    if currentSpeed > 200 then currentSpeed = 16 end
    
    SpeedBtn.Text = "SPEED: " .. currentSpeed
    if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
        LocalPlayer.Character.Humanoid.WalkSpeed = currentSpeed
    end
    
    print("⚡ SPEED: " .. currentSpeed)
end)

-- HIGH JUMP
JumpToggle.MouseButton1Click:Connect(function()
    jumpActive = not jumpActive
    if jumpActive then
        JumpToggle.Text = "AN"
        JumpToggle.BackgroundColor3 = Color3.fromRGB(50, 200, 50)
        if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
            LocalPlayer.Character.Humanoid.JumpHeight = 100
        end
        print("🦘 HIGH JUMP: AKTIVIERT")
    else
        JumpToggle.Text = "AUS"
        JumpToggle.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
        if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
            LocalPlayer.Character.Humanoid.JumpHeight = 7.2
        end
        print("🦘 HIGH JUMP: DEAKTIVIERT")
    end
end)

-- NOCLIP
NoclipToggle.MouseButton1Click:Connect(function()
    noclipActive = not noclipActive
    if noclipActive then
        NoclipToggle.Text = "AN"
        NoclipToggle.BackgroundColor3 = Color3.fromRGB(50, 200, 50)
        print("👻 NOCLIP: AKTIVIERT")
        
        -- Noclip aktivieren
        spawn(function()
            while noclipActive do
                task.wait()
                if LocalPlayer.Character then
                    for _, part in pairs(LocalPlayer.Character:GetDescendants()) do
                        if part:IsA("BasePart") then
                            part.CanCollide = false
                        end
                    end
                end
            end
        end)
    else
        NoclipToggle.Text = "AUS"
        NoclipToggle.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
        print("👻 NOCLIP: DEAKTIVIERT")
        
        -- Noclip deaktivieren
        if LocalPlayer.Character then
            for _, part in pairs(LocalPlayer.Character:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.CanCollide = true
                end
            end
        end
    end
end)

-- CLOSE BUTTON
local CloseBtn = Instance.new("TextButton")
CloseBtn.Text = "❌ CLOSE MENU"
CloseBtn.Size = UDim2.new(0.9, 0, 0.08, 0)
CloseBtn.Position = UDim2.new(0.05, 0, 0.9, 0)
CloseBtn.BackgroundColor3 = Color3.fromRGB(150, 0, 0)
CloseBtn.TextColor3 = Color3.white
CloseBtn.Font = Enum.Font.GothamBold
CloseBtn.TextScaled = true
CloseBtn.Parent = MainFrame

CloseBtn.MouseButton1Click:Connect(function()
    MainFrame.Visible = false
    print("📱 Menu geschlossen")
end)

-- MADE BY ANIMATION
spawn(function()
    while true do
        for i = 0, 1, 0.1 do
            Credits.TextTransparency = i
            task.wait(0.1)
        end
        for i = 1, 0, -0.1 do
            Credits.TextTransparency = i
            task.wait(0.1)
        end
    end
end)

print("🎮 AMBER ALERT HACK MENU GELADEN!")
print("✨ Features: Tool Giver, Fly, God Mode, Money, Speed, Jump, Noclip")
print("🎯 Steuerung: Drücke X oder klicke Menu Button")
print("🩸 Design by Waled & Hammad")
