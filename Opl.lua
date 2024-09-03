spawn(function()
    while wait() do 
        pcall(function()
            if _G.Raids then
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if v.ClassName == "Model" then
                v.Humanoid.Health = die
                    end
                end
            end
        end)
    end
end)
 
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))() -- อันนี้เป็นUI
local Window = Library.CreateLib("Power x Hub", "Synapse") -- อันนี้เป็นชื่อui

local ScreenGui = Instance.new("ScreenGui") 
ScreenGui.Name = "ScreenGui" 
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui") 
ScreenGui.ResetOnSpawn = false 

local Toggle = Instance.new("TextButton") 
Toggle.Name = "Toggle" 
Toggle.Parent = ScreenGui 
Toggle.BackgroundColor3 = Color3.fromRGB(0, 0, 0) 
Toggle.Position = UDim2.new(0, 0, 0.454706937, 0) 
Toggle.Size = UDim2.new(0, 90, 0, 38) 
Toggle.Font = Enum.Font.SourceSans 
Toggle.Text = "Turn/off" 
Toggle.TextColor3 = Color3.fromRGB(248, 248, 248) 
Toggle.TextSize = 23.000 
Toggle.Draggable = true 
Toggle.MouseButton1Click:connect(function() 
Library:ToggleUI() 
end)

spawn(function()
        while wait() do
            pcall(function()
                    if _G.HitMob then
                        for i,v in 
pairs(game:GetService("Workspace").Enemies:GetChildren()) do 
      v.HumanoidRootPart.Size = Vector3.new(13, 13, 13) 
      v.HumanoidRootPart.Transparency = 0.5
                        end
                    end
                end)
            end
        end)

local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("Auto Farm")
Section:NewToggle("Kill Aura", "kill aura mob", function(v)
    _G.Raids = v
end)
Section:NewToggle("Hitbox Mob", "hitbox mob", function(v)
        _G.HitMob = v
    end)

local Tab = Window:NewTab("Auto Farm")
local Section = Tab:NewSection("List Mob")
Section:NewToggle("Lv2 Angry Bob", "", function(V)
        _G.AutoFarm = V
spawn(function)
if _G.AutoFarm then
while wait() do
pcall(function)
game.Players.LocalPlayer.HumaniodRootPart.CFrame = game.workspace.Enemies["Lv2 Angry Bob"].HumaniodRootPart.CFrame * New.CFrame(0,0,-5)
            end
        end
    end
    end
