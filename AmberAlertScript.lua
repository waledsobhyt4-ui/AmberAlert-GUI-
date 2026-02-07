-- MOBILE OPTIMIZED AMBER ALERT GUI
-- Größere Buttons für Touchscreen
-- Einfache Bedienung für Handy

local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")

local player = Players.LocalPlayer
local gui = player:WaitForChild("PlayerGui")

-- Mobile Detection
local IS_MOBILE = UIS.TouchEnabled

-- ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "AmberAlertMobileGUI"
screenGui.Parent = gui
screenGui.ResetOnSpawn = false

-- Main Frame (größer für Mobile)
local mainFrame = Instance.new("Frame")
mainFrame.Size = IS_MOBILE and UDim2.new(0.9, 0, 0.8, 0) or UDim2.new(0.6, 0, 0.7, 0)
mainFrame.Position = IS_MOBILE and UDim2.new(0.05, 0, 0.1, 0) or UDim2.new(0.2, 0, 0.15, 0)
mainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 40)
mainFrame.BackgroundTransparency = 0.1
mainFrame.Visible = false
mainFrame.Parent = screenGui

-- Titel
local title = Instance.new("TextLabel")
title.Text = "📱 AMBER ALERT MOBILE"
title.Size = UDim2.new(1, 0, 0.1, 0)
title.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
title.TextColor3 = Color3.white
title.Font = Enum.Font.GothamBlack
title.TextScaled = true
title.Parent = mainFrame

-- MOBILE TOGGLE BUTTON (immer sichtbar)
local mobileToggle = Instance.new("TextButton")
mobileToggle.Name = "MobileToggle"
mobileToggle.Size = UDim2.new(0.2, 0, 0.1, 0)
mobileToggle.Position = UDim2.new(0.01, 0, 0.01, 0)
mobileToggle.BackgroundColor3 = Color3.fromRGB(255, 50, 100)
mobileToggle.Text = "📱 MENU"
mobileToggle.TextColor3 = Color3.white
mobileToggle.TextScaled = true
mobileToggle.Font = Enum.Font.GothamBold
mobileToggle.Parent = screenGui

-- Mobile Features (größere Buttons)
local features = {
    {"💰 INFINITE MONEY", Color3.fromRGB(50, 200, 50), function()
        print("Money activated")
    end},
    {"⚡ SPEED HACK", Color3.fromRGB(50, 150, 255), function()
        local humanoid = player.Character and player.Character:FindFirstChild("Humanoid")
        if humanoid then humanoid.WalkSpeed = 100 end
    end},
    {"🦘 HIGH JUMP", Color3.fromRGB(255, 100, 255), function()
        local humanoid = player.Character and player.Character:FindFirstChild("Humanoid")
        if humanoid then humanoid.JumpHeight = 100 end
    end},
    {"🕊️ FLY MODE", Color3.fromRGB(100, 200, 255), function()
        print("Fly activated")
    end},
    {"🛡️ GOD MODE", Color3.fromRGB(255, 50, 50), function()
        local humanoid = player.Character and player.Character:FindFirstChild("Humanoid")
        if humanoid then
            humanoid.MaxHealth = math.huge
            humanoid.Health = math.huge
        end
    end},
    {"👻 NOCLIP", Color3.fromRGB(100, 255, 100), function()
        print("Noclip activated")
    end}
}

-- Buttons erstellen
for i, feature in ipairs(features) do
    local btn = Instance.new("TextButton")
    btn.Name = feature[1]
    btn.Text = feature[1]
    btn.Size = UDim2.new(0.9, 0, 0.12, 0)
    btn.Position = UDim2.new(0.05, 0, 0.12 + (i * 0.14), 0)
    btn.BackgroundColor3 = feature[2]
    btn.TextColor3 = Color3.white
    btn.TextScaled = true
    btn.Font = Enum.Font.GothamBold
    btn.Parent = mainFrame
    
    -- Touch-optimiert
    btn.MouseButton1Click:Connect(function()
        feature[3]()
        -- Visuelles Feedback
        btn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        btn.TextColor3 = Color3.fromRGB(0, 0, 0)
        task.wait(0.2)
        btn.BackgroundColor3 = feature[2]
        btn.TextColor3 = Color3.white
    end)
end

-- Close Button für Mobile
local closeBtn = Instance.new("TextButton")
closeBtn.Text = "❌ CLOSE"
closeBtn.Size = UDim2.new(0.9, 0, 0.1, 0)
closeBtn.Position = UDim2.new(0.05, 0, 0.9, 0)
closeBtn.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
closeBtn.TextColor3 = Color3.white
closeBtn.Font = Enum.Font.GothamBold
closeBtn.TextScaled = true
closeBtn.Parent = mainFrame

-- Toggle Funktion
mobileToggle.MouseButton1Click:Connect(function()
    mainFrame.Visible = not mainFrame.Visible
    print("📱 Mobile Menu: " .. (mainFrame.Visible and "OPEN" or "CLOSED"))
end)

closeBtn.MouseButton1Click:Connect(function()
    mainFrame.Visible = false
end)

-- Für PC: X-Taste Support
if not IS_MOBILE then
    UIS.InputBegan:Connect(function(input)
        if input.KeyCode == Enum.KeyCode.X then
            mainFrame.Visible = not mainFrame.Visible
        end
    end)
    
    print("🎮 PC Mode: Press X to toggle menu")
else
    print("📱 Mobile Mode: Tap the red button")
end

print("✅ Amber Alert Mobile GUI loaded!")
