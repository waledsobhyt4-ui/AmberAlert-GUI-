--!native
-- AMBER ALERT MOBILE GUI
-- Optimiert für Handy
-- Made by Waled & Hammad

local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")

local player = Players.LocalPlayer
local gui = player:WaitForChild("PlayerGui")

-- SCREEN GUI
local screenGui = Instance.new("ScreenGui", gui)
screenGui.Name = "AmberAlertMobile"
screenGui.ResetOnSpawn = false

-- MAIN FRAME
local mainFrame = Instance.new("Frame", screenGui)
mainFrame.Size = UDim2.new(0.9, 0, 0.8, 0)
mainFrame.Position = UDim2.new(0.05, 0, 0.1, 0)
mainFrame.BackgroundColor3 = Color3.fromRGB(20, 0, 40)
mainFrame.Visible = false

-- TITLE
local title = Instance.new("TextLabel", mainFrame)
title.Text = "AMBER ALERT MOBILE"
title.Size = UDim2.new(1, 0, 0.1, 0)
title.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
title.TextColor3 = Color3.white
title.Font = Enum.Font.GothamBlack
title.TextScaled = true

-- TOOL BUTTONS (einfacher für Handy)
local tools = {"🔫 GUN", "🔦 LIGHT", "🔑 KEY", "💊 HEAL"}

for i, tool in ipairs(tools) do
    local btn = Instance.new("TextButton", mainFrame)
    btn.Text = tool
    btn.Size = UDim2.new(0.45, 0, 0.15, 0)
    btn.Position = UDim2.new(0.05, 0, 0.15 + (i * 0.18), 0)
    btn.BackgroundColor3 = Color3.fromRGB(60, 40, 100)
    btn.TextColor3 = Color3.white
    btn.Font = Enum.Font.GothamBold
    btn.TextScaled = true
    
    btn.MouseButton1Click:Connect(function()
        print("Tool: " .. tool)
    end)
end

-- FEATURE BUTTONS
local features = {
    {"🛡️ GOD", function() 
        if player.Character then
            player.Character.Humanoid.MaxHealth = math.huge
        end
    end},
    {"🕊️ FLY", function() print("Fly ON") end},
    {"💰 $10K", function() print("Money added") end},
    {"⚡ SPEED", function() 
        if player.Character then
            player.Character.Humanoid.WalkSpeed = 100
        end
    end}
}

for i, feature in ipairs(features) do
    local btn = Instance.new("TextButton", mainFrame)
    btn.Text = feature[1]
    btn.Size = UDim2.new(0.45, 0, 0.15, 0)
    btn.Position = UDim2.new(0.5, 0, 0.15 + (i * 0.18), 0)
    btn.BackgroundColor3 = Color3.fromRGB(40, 80, 120)
    btn.TextColor3 = Color3.white
    btn.Font = Enum.Font.GothamBold
    btn.TextScaled = true
    btn.MouseButton1Click = feature[2]
end

-- MOBILE TOGGLE BUTTON (größer für Handy)
local toggleBtn = Instance.new("TextButton", screenGui)
toggleBtn.Text = "📱 MENU"
toggleBtn.Size = UDim2.new(0.2, 0, 0.1, 0)
toggleBtn.Position = UDim2.new(0.01, 0, 0.01, 0)
toggleBtn.BackgroundColor3 = Color3.fromRGB(255, 50, 100)
toggleBtn.TextColor3 = Color3.white
toggleBtn.Font = Enum.Font.GothamBlack
toggleBtn.TextScaled = true

toggleBtn.MouseButton1Click:Connect(function()
    mainFrame.Visible = not mainFrame.Visible
end)

-- CLOSE BUTTON
local closeBtn = Instance.new("TextButton", mainFrame)
closeBtn.Text = "❌ CLOSE"
closeBtn.Size = UDim2.new(0.9, 0, 0.1, 0)
closeBtn.Position = UDim2.new(0.05, 0, 0.9, 0)
closeBtn.BackgroundColor3 = Color3.fromRGB(150, 0, 0)
closeBtn.TextColor3 = Color3.white
closeBtn.Font = Enum.Font.GothamBold
closeBtn.TextScaled = true

closeBtn.MouseButton1Click:Connect(function()
    mainFrame.Visible = false
end)

print("📱 Amber Alert Mobile GUI geladen!")
