local main = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Auto = Instance.new("TextButton")
local closebutton = Instance.new("TextButton")
local Click = Instance.new("TextButton")

main.Name = "main"
main.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
main.ResetOnSpawn = false 

Frame.Parent = main
Frame.BackgroundColor3 = Color3.fromRGB(54, 54, 54)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.Position = UDim2.new(0.100320168, 0, 0.379746825, 0)
Frame.Size = UDim2.new(0, 190, 0, 57) 

Auto.Name = "Auto"
Auto.Parent = Frame
Auto.BackgroundColor3 = Color3.fromRGB(51, 51, 51)
Auto.Size = UDim2.new(0, 55, 0, 55)
Auto.Font = Enum.Font.SourceSans
Auto.Text = "Auto Parry"
Auto.BorderColor3 = Color3.fromRGB(0, 0, 0)
Auto.TextColor3 = Color3.fromRGB(0, 0, 0)
Auto.TextSize = 14.000 

Click.Name = "Click"
Click.Parent = Frame
Click.BackgroundColor3 = Color3.fromRGB(51, 51, 51)
Click.Position = UDim2.new(0.468421042, 0, 0.491228074, 0)
Click.Size = UDim2.new(0, 44, 0, 28)
Click.Font = Enum.Font.SourceSans
Click.Text = "Auto Click"
Click.BorderColor3 = Color3.fromRGB(0, 0, 0)
Click.TextColor3 = Color3.fromRGB(0, 0, 0)
Click.TextScaled = true
Click.TextSize = 14.000
Click.TextWrapped = true 

closebutton.Name = "Close"
closebutton.Parent = main.Frame
closebutton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
closebutton.Font = "SourceSans"
closebutton.Size = UDim2.new(0, 45, 0, 28)
closebutton.BorderColor3 = Color3.fromRGB(0, 0, 0)
closebutton.Text = "X"
closebutton.TextSize = 30
closebutton.TextColor3 = Color3.fromRGB(0, 0, 0)
closebutton.Position = UDim2.new(0, 0, -1, 27) 

-- Bildirim 

game:GetService("StarterGui"):SetCore("SendNotification", { 
Title = "Blade Ball V1";
Text = "By Wreston";
Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
Duration = 5; 

-- Auto Parry

Auto.MouseButton1Click:connect(function()
    getgenv().god = true

while getgenv().god and task.wait() do
    local localPlayer = game:GetService("Players").LocalPlayer
    local character = localPlayer.Character

    if character and character:FindFirstChild("HumanoidRootPart") then
        local humanoidRootPart = character.HumanoidRootPart

        for _, ball in ipairs(workspace.Balls:GetChildren()) do
            if ball and humanoidRootPart then
                humanoidRootPart.CFrame = CFrame.new(humanoidRootPart.Position, ball.Position)

                if character:FindFirstChild("Highlight") then
                    humanoidRootPart.CFrame = ball.CFrame * CFrame.new(0, 0, (ball.Velocity).Magnitude * -0.5)
                    game:GetService("ReplicatedStorage").Remotes.ParryButtonPress:Fire()
                end
            end
        end
    end
end
    end)

-- Close Button

closebutton.MouseButton1Click:Connect(function()
main:Destroy()
end) 

