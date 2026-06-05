--[[
    â–‘â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•—â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•—â–‘â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•—â–‘â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•—â–‘â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•—â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•—â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•—â–‘â€ƒâ€ƒâ–ˆâ–ˆâ•—â–‘â–‘â–ˆâ–ˆâ•—
    â–ˆâ–ˆâ•”â•â•â•â•â•â–ˆâ–ˆâ•”â•â•â–ˆâ–ˆâ•—â–ˆâ–ˆâ•”â•â•â•â•â•â–ˆâ–ˆâ•”â•â•â–ˆâ–ˆâ•—â•šâ•â•â–ˆâ–ˆâ•”â•â•â•â–ˆâ–ˆâ•”â•â•â•â•â•â–ˆâ–ˆâ•”â•â•â–ˆâ–ˆâ•—â€ƒâ€ƒâ•šâ–ˆâ–ˆâ•—â–ˆâ–ˆâ•”â•
    â•šâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•—â–‘â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•”â•â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•—â–‘â–‘â–ˆâ–ˆâ•‘â–‘â–‘â•šâ•â•â–‘â–‘â–‘â–ˆâ–ˆâ•‘â–‘â–‘â–‘â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•—â–‘â–‘â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•”â•â€ƒâ€ƒâ–‘â•šâ–ˆâ–ˆâ–ˆâ•”â•â–‘
    â–‘â•šâ•â•â•â–ˆâ–ˆâ•—â–ˆâ–ˆâ•”â•â•â•â•â–‘â–ˆâ–ˆâ•”â•â•â•â–‘â–‘â–ˆâ–ˆâ•‘â–‘â–‘â–ˆâ–ˆâ•—â–‘â–‘â–‘â–ˆâ–ˆâ•‘â–‘â–‘â–‘â–ˆâ–ˆâ•”â•â•â•â–‘â–‘â–ˆâ–ˆâ•”â•â•â–ˆâ–ˆâ•—â€ƒâ€ƒâ–‘â–ˆâ–ˆâ•”â–ˆâ–ˆâ•—â–‘
    â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•”â•â–ˆâ–ˆâ•‘â–‘â–‘â–‘â–‘â–‘â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•—â•šâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•”â•â–‘â–‘â–‘â–ˆâ–ˆâ•‘â–‘â–‘â–‘â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•—â–ˆâ–ˆâ•‘â–‘â–‘â–ˆâ–ˆâ•‘â€ƒâ€ƒâ–ˆâ–ˆâ•”â•â•šâ–ˆâ–ˆâ•—
    â•šâ•â•â•â•â•â•â•â•šâ•â•â–‘â–‘â–‘â–‘â–‘â•šâ•â•â•â•â•â•â•â–‘â•šâ•â•â•â•â•â–‘â–‘â–‘â–‘â•šâ•â•â–‘â–‘â–‘â•šâ•â•â•â•â•â•â•â•šâ•â•â–‘â–‘â•šâ•â•â€ƒâ€ƒâ•šâ•â•â–‘â–‘â•šâ•â•
--]]

local CoreGui = game:GetService("CoreGui")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local Player = Players.LocalPlayer

-- Konfiqurasiya
getgenv().SpecterXConfig = {
    AutoParry = true,
    DistanceOffset = 0.55,
    CorrectKey = "script-beta2U9YPLGP8",
    KeyLink = "https://work.ink/2CXm/specter-x-premium"
}

-- ScreenGui YaradÄ±lmasÄ±
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "SpecterX_Premium"
ScreenGui.ResetOnSpawn = false
if syn and syn.protect_gui then syn.protect_gui(ScreenGui) end
ScreenGui.Parent = CoreGui:FindFirstChild("RobloxGui") or CoreGui or Player:WaitForChild("PlayerGui")

----------------------------------------------------------------
-- SÃœRÃœKLÆMÆ FUNKSÄ°YASI (MOBÄ°L VÆ PC UYUMLU)
----------------------------------------------------------------
local function makeDraggable(dragInstance, moveInstance)
    local dragging, dragInput, dragStart, startPos
    dragInstance.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = moveInstance.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then dragging = false end
            end)
        end
    end)
    moveInstance.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then dragInput = input end
    end)
    UserInputService.InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            local delta = input.Position - dragStart
            moveInstance.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        end
    end)
end

----------------------------------------------------------------
-- PANORAMA (KEY PANEL) DESIGN
----------------------------------------------------------------
local KeyFrame = Instance.new("Frame")
KeyFrame.Name = "KeyFrame"
KeyFrame.Size = UDim2.new(0, 300, 0, 200)
KeyFrame.Position = UDim2.new(0.5, -150, 0.4, -100)
KeyFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 20)
KeyFrame.BorderSizePixel = 0
KeyFrame.Parent = ScreenGui

local KeyCorner = Instance.new("UICorner")
KeyCorner.CornerRadius = UDim.new(0, 12)
KeyCorner.Parent = KeyFrame

local KeyStroke = Instance.new("UIStroke")
KeyStroke.Color = Color3.fromRGB(0, 170, 255)
KeyStroke.Thickness = 1.5
KeyStroke.Parent = KeyFrame

local KeyTitle = Instance.new("TextLabel")
KeyTitle.Size = UDim2.new(1, 0, 0, 40)
KeyTitle.BackgroundColor3 = Color3.fromRGB(22, 22, 30)
KeyTitle.Text = "  SPECTER X  |  KEY SYSTEM"
KeyTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyTitle.Font = Enum.Font.GothamBold
KeyTitle.TextSize = 13
KeyTitle.TextXAlignment = Enum.TextXAlignment.Left
KeyTitle.Parent = KeyFrame
makeDraggable(KeyTitle, KeyFrame)

-- Key Input SahÉ™si
local KeyInput = Instance.new("TextBox")
KeyInput.Size = UDim2.new(0, 260, 0, 35)
KeyInput.Position = UDim2.new(0.5, -130, 0, 65)
KeyInput.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
KeyInput.Text = ""
KeyInput.PlaceholderText = "Enter Premium Key Here..."
KeyInput.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyInput.PlaceholderColor3 = Color3.fromRGB(120, 120, 130)
KeyInput.Font = Enum.Font.Gotham
KeyInput.TextSize = 12
KeyInput.Parent = KeyFrame

local InputCorner = Instance.new("UICorner")
InputCorner.CornerRadius = UDim.new(0, 6)
InputCorner.Parent = KeyInput

-- Check Key DÃ¼ymÉ™si
local CheckBtn = Instance.new("TextButton")
CheckBtn.Size = UDim2.new(0, 125, 0, 35)
CheckBtn.Position = UDim2.new(0, 20, 0, 115)
CheckBtn.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
CheckBtn.Text = "Check Key"
CheckBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
CheckBtn.Font = Enum.Font.GothamBold
CheckBtn.TextSize = 12
CheckBtn.Parent = KeyFrame

local CheckCorner = Instance.new("UICorner")
CheckCorner.CornerRadius = UDim.new(0, 6)
CheckCorner.Parent = CheckBtn

-- Get Key DÃ¼ymÉ™si
local GetKeyBtn = Instance.new("TextButton")
GetKeyBtn.Size = UDim2.new(0, 125, 0, 35)
GetKeyBtn.Position = UDim2.new(1, -145, 0, 115)
GetKeyBtn.BackgroundColor3 = Color3.fromRGB(35, 35, 45)
GetKeyBtn.Text = "Get Key (Link)"
GetKeyBtn.TextColor3 = Color3.fromRGB(200, 200, 200)
GetKeyBtn.Font = Enum.Font.GothamBold
GetKeyBtn.TextSize = 12
GetKeyBtn.Parent = KeyFrame

local GetKeyCorner = Instance.new("UICorner")
GetKeyCorner.CornerRadius = UDim.new(0, 6)
GetKeyCorner.Parent = GetKeyBtn

-- Key Bildirim YazÄ±sÄ±
local KeyInfo = Instance.new("TextLabel")
KeyInfo.Size = UDim2.new(0, 260, 0, 25)
KeyInfo.Position = UDim2.new(0.5, -130, 0, 165)
KeyInfo.BackgroundTransparency = 1
KeyInfo.Text = "Please verify your premium access."
KeyInfo.TextColor3 = Color3.fromRGB(140, 140, 150)
KeyInfo.Font = Enum.Font.Gotham
KeyInfo.TextSize = 11
KeyInfo.Parent = KeyFrame


----------------------------------------------------------------
-- ANA MENYU DESIGN (MAIN FRAME - GÄ°ZLÄ° BAÅžLAYIR)
----------------------------------------------------------------
local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Size = UDim2.new(0, 320, 0, 180)
MainFrame.Position = UDim2.new(0.5, -160, 0.4, -90)
MainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 20)
MainFrame.BorderSizePixel = 0
MainFrame.Visible = false
MainFrame.Parent = ScreenGui

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 12)
MainCorner.Parent = MainFrame

local UIStroke = Instance.new("UIStroke")
UIStroke.Color = Color3.fromRGB(0, 170, 255)
UIStroke.Thickness = 1.5
UIStroke.Parent = MainFrame

local TitleBar = Instance.new("TextLabel")
TitleBar.Size = UDim2.new(1, 0, 0, 40)
TitleBar.BackgroundColor3 = Color3.fromRGB(22, 22, 30)
TitleBar.Text = "  SPECTER X  |  PREMIUM EDITION"
TitleBar.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleBar.Font = Enum.Font.GothamBold
TitleBar.TextSize = 13
TitleBar.TextXAlignment = Enum.TextXAlignment.Left
TitleBar.Parent = MainFrame
makeDraggable(TitleBar, MainFrame)

-- BaÄŸlama DÃ¼ymÉ™si (Menyunu tamamilÉ™ yox edir)
local CloseButton = Instance.new("TextButton")
CloseButton.Size = UDim2.new(0, 30, 0, 30)
CloseButton.Position = UDim2.new(1, -35, 0, 5)
CloseButton.BackgroundTransparency = 1
CloseButton.Text = "Ã—"
CloseButton.TextColor3 = Color3.fromRGB(180, 180, 180)
CloseButton.TextSize = 24
CloseButton.Font = Enum.Font.Gotham
CloseButton.Parent = MainFrame

CloseButton.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)

-- Toggle ElementlÉ™ri
local ToggleFrame = Instance.new("Frame")
ToggleFrame.Size = UDim2.new(0, 280, 0, 50)
ToggleFrame.Position = UDim2.new(0.5, -140, 0, 65)
ToggleFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
ToggleFrame.Parent = MainFrame

local ToggleCorner = Instance.new("UICorner")
ToggleCorner.CornerRadius = UDim.new(0, 8)
ToggleCorner.Parent = ToggleFrame

local ToggleLabel = Instance.new("TextLabel")
ToggleLabel.Size = UDim2.new(0, 150, 1, 0)
ToggleLabel.Position = UDim2.new(0, 15, 0, 0)
ToggleLabel.BackgroundTransparency = 1
ToggleLabel.Text = "Combat Auto Parry"
ToggleLabel.TextColor3 = Color3.fromRGB(230, 230, 230)
ToggleLabel.Font = Enum.Font.GothamMedium
ToggleLabel.TextSize = 14
ToggleLabel.TextXAlignment = Enum.TextXAlignment.Left
ToggleLabel.Parent = ToggleFrame

local SwitchContainer = Instance.new("TextButton")
SwitchContainer.Size = UDim2.new(0, 50, 0, 26)
SwitchContainer.Position = UDim2.new(1, -65, 0.5, -13)
SwitchContainer.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
SwitchContainer.Text = ""
SwitchContainer.Parent = ToggleFrame

local SwitchCorner = Instance.new("UICorner")
SwitchCorner.CornerRadius = UDim.new(1, 0)
SwitchCorner.Parent = SwitchContainer

local SwitchCircle = Instance.new("Frame")
SwitchCircle.Size = UDim2.new(0, 20, 0, 20)
SwitchCircle.Position = UDim2.new(0, 26, 0.5, -10)
SwitchCircle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SwitchCircle.Parent = SwitchContainer

local CircleCorner = Instance.new("UICorner")
CircleCorner.CornerRadius = UDim.new(1, 0)
CircleCorner.Parent = SwitchCircle

local StatusLabel = Instance.new("TextLabel")
StatusLabel.Size = UDim2.new(0, 280, 0, 30)
StatusLabel.Position = UDim2.new(0.5, -140, 0, 130)
StatusLabel.BackgroundTransparency = 1
StatusLabel.Text = "Status: Active & Secure"
StatusLabel.TextColor3 = Color3.fromRGB(0, 200, 100)
StatusLabel.Font = Enum.Font.Gotham
StatusLabel.TextSize = 12
StatusLabel.Parent = MainFrame

-- On/Off KeÃ§id Sistemi
SwitchContainer.MouseButton1Click:Connect(function()
    getgenv().SpecterXConfig.AutoParry = not getgenv().SpecterXConfig.AutoParry
    if getgenv().SpecterXConfig.AutoParry then
        TweenService:Create(SwitchContainer, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(0, 170, 255)}):Play()
        TweenService:Create(SwitchCircle, TweenInfo.new(0.2), {Position = UDim2.new(0, 26, 0.5, -10)}):Play()
        StatusLabel.Text = "Status: Active & Secure"
        StatusLabel.TextColor3 = Color3.fromRGB(0, 200, 100)
    else
        TweenService:Create(SwitchContainer, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(50, 50, 60)}):Play()
        TweenService:Create(SwitchCircle, TweenInfo.new(0.2), {Position = UDim2.new(0, 4, 0.5, -10)}):Play()
        StatusLabel.Text = "Status: Disabled"
        StatusLabel.TextColor3 = Color3.fromRGB(200, 50, 50)
    end
end)


----------------------------------------------------------------
-- MENYU AÃ‡MA/QAPATMA DÃœYMÆSÄ° (TOGGLE BUTTON)
----------------------------------------------------------------
local ToggleMenuBtn = Instance.new("TextButton")
ToggleMenuBtn.Name = "ToggleMenuBtn"
ToggleMenuBtn.Size = UDim2.new(0, 45, 0, 45)
ToggleMenuBtn.Position = UDim2.new(0, 15, 0.5, -22) -- EkranÄ±n sol tÉ™rÉ™findÉ™ mÉ™rkÉ™zlÉ™nib
ToggleMenuBtn.BackgroundColor3 = Color3.fromRGB(22, 22, 30)
ToggleMenuBtn.Text = "SX"
ToggleMenuBtn.TextColor3 = Color3.fromRGB(0, 170, 255)
ToggleMenuBtn.Font = Enum.Font.GothamBold
ToggleMenuBtn.TextSize = 14
ToggleMenuBtn.Visible = false -- YalnÄ±z uÄŸurlu key giriÅŸindÉ™n sonra gÃ¶rÃ¼nÃ¼r
ToggleMenuBtn.Parent = ScreenGui

local BtnCorner = Instance.new("UICorner")
BtnCorner.CornerRadius = UDim.new(1, 0) -- Tam dairÉ™vi gÃ¶rÃ¼nÃ¼ÅŸ
BtnCorner.Parent = ToggleMenuBtn

local BtnStroke = Instance.new("UIStroke")
BtnStroke.Color = Color3.fromRGB(0, 170, 255)
BtnStroke.Thickness = 1.5
BtnStroke.Parent = ToggleMenuBtn

makeDraggable(ToggleMenuBtn, ToggleMenuBtn)

-- DÃ¼ymÉ™yÉ™ basanda menyunu aÃ§/baÄŸla
ToggleMenuBtn.MouseButton1Click:Connect(function()
    MainFrame.Visible = not MainFrame.Visible
end)


----------------------------------------------------------------
-- KEY SISTEMININ MANTIQI
----------------------------------------------------------------
GetKeyBtn.MouseButton1Click:Connect(function()
    if setclipboard then
        setclipboard(getgenv().SpecterXConfig.KeyLink)
        KeyInfo.Text = "Link copied to clipboard!"
        KeyInfo.TextColor3 = Color3.fromRGB(0, 170, 255)
    else
        KeyInfo.Text = "Link: work.ink/2CXm/specter-x-premium"
        KeyInfo.TextColor3 = Color3.fromRGB(255, 255, 255)
    end
end)

CheckBtn.MouseButton1Click:Connect(function()
    if KeyInput.Text == getgenv().SpecterXConfig.CorrectKey then
        KeyInfo.Text = "Access Granted! Loading UI..."
        KeyInfo.TextColor3 = Color3.fromRGB(0, 200, 100)
        task.wait(1)
        KeyFrame:Destroy() -- Key panelini tamamilÉ™ silir
        MainFrame.Visible = true -- Ana hile panelini aÃ§Ä±r
        ToggleMenuBtn.Visible = true -- Sol tÉ™rÉ™fdÉ™ki gizlÉ™tmÉ™ dÃ¼ymÉ™sini aktiv edir
    else
        KeyInfo.Text = "Invalid Key! Please try again."
        KeyInfo.TextColor3 = Color3.fromRGB(200, 50, 50)
    end
end)


----------------------------------------------------------------
-- ARXADA Ä°ÅžLÆYÆN AUTO-PARRY MOTORU
----------------------------------------------------------------
local Cooldown = tick()
local Parried = false
local Connection = nil

local function GetBall()
    local BallsFolder = workspace:FindFirstChild("Balls")
    if not BallsFolder then return nil end
    for _, Ball in ipairs(BallsFolder:GetChildren()) do
        if Ball:GetAttribute("realBall") then
            return Ball
        end
    end
    return nil
end

local function ResetConnection()
    if Connection then
        Connection:Disconnect()
        Connection = nil
    end
end

local BallsFolder = workspace:WaitForChild("Balls", 9000000000)
if BallsFolder then
    BallsFolder.ChildAdded:Connect(function()
        local Ball = GetBall()
        if not Ball then return end
        ResetConnection()
        Connection = Ball:GetAttributeChangedSignal("target"):Connect(function()
            Parried = false
        end)
    end)
end

RunService.PreSimulation:Connect(function()
    if not MainFrame.Visible and not ToggleMenuBtn.Visible then return end -- Key yoxlanÄ±ÅŸÄ± bitmÉ™dÉ™n iÅŸlÉ™mÉ™z
    if not getgenv().SpecterXConfig.AutoParry then return end
    
    local Character = Player.Character
    if not Character then return end
    local HRP = Character:FindFirstChild("HumanoidRootPart")
    local Ball = GetBall()
    
    if not Ball or not HRP then return end
    
    local Zoomies = Ball:FindFirstChild("zoomies")
    if not Zoomies then return end
    
    local Speed = Zoomies.VectorVelocity.Magnitude
    local Distance = (HRP.Position - Ball.Position).Magnitude
    
    if Ball:GetAttribute("target") == Player.Name and not Parried and (Distance / Speed) <= getgenv().SpecterXConfig.DistanceOffset then
        local PlayerGui = Player:FindFirstChild("PlayerGui")
        local Hotbar = PlayerGui and PlayerGui:FindFirstChild("Hotbar")
        local blockButton = Hotbar and Hotbar:FindFirstChild("Block")
        
        if blockButton then
            local connections = getconnections(blockButton.Activated) or getconnections(blockButton.MouseButton1Click) or getconnections(blockButton.MouseButton1Down)
            if connections then
                for _, connection in pairs(getconnections(blockButton.Activated)) do connection:Fire() end
                for _, connection in pairs(getconnections(blockButton.MouseButton1Click)) do connection:Fire() end
                for _, connection in pairs(getconnections(blockButton.MouseButton1Down)) do connection:Fire() end
            end
        end
        
        Parried = true
        Cooldown = tick()
        
        if (tick() - Cooldown) >= 1 then
            Parried = false
        end
    end
end)
