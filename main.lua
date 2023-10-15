local main = Instance.new("ScreenGui")
main.Name = "main"
main.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
main.ResetOnSpawn = false

local frame = Instance.new("Frame")
frame.Parent = main
frame.BackgroundColor3 = Color3.fromRGB(54, 54, 54)
frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
frame.Position = UDim2.new(0.100320168, 0, 0.379746825, 0)
frame.Size = UDim2.new(0, 190, 0, 57)

local Auto = Instance.new("TextButton")
Auto.Name = "Auto"
Auto.Parent = frame
Auto.BackgroundColor3 = Color3.fromRGB(51, 51, 51)
Auto.Size = UDim2.new(0, 55, 0, 55)
Auto.Font = Enum.Font.SourceSans
Auto.Text = "Auto Parry"
Auto.BorderColor3 = Color3.fromRGB(0, 0, 0)
Auto.TextColor3 = Color3.fromRGB(0, 0, 0)
Auto.TextScaled = true
Auto.TextSize = 14.000
Auto.TextWrapped = true

local Click = Instance.new("TextButton")
Click.Name = "Click"
Click.Parent = frame
Click.BackgroundColor3 = Color3.fromRGB(51, 51, 51)
Click.Size = UDim2.new(0, 55, 0, 55)
Click.Font = Enum.Font.SourceSans
Click.Text = "Auto Click"
Click.BorderColor3 = Color3.fromRGB(0, 0, 0)
Click.TextColor3 = Color3.fromRGB(0, 0, 0)
Click.TextScaled = true
Click.TextSize = 14.000
Click.TextWrapped = true

local closebutton = Instance.new("TextButton")
closebutton.Name = "Close"
closebutton.Parent = frame
closebutton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
closebutton.Font = "SourceSans"
closebutton.Size = UDim2.new(0, 45, 0, 28)
closebutton.BorderColor3 = Color3.fromRGB(0, 0, 0)
closebutton.Text = "X"
closebutton.TextSize = 30
closebutton.TextColor3 = Color3.fromRGB(0, 0, 0)
closebutton.Position = UDim2.new(0, 0, -1, 27)

-- Yan Yana
Click.Position = UDim2.new(0, 0, 0, 0)
Auto.Position = UDim2.new(0, 110, 0, 0)

-- Bildirim
game:GetService("StarterGui"):SetCore("SendNotification", { 
    Title = "Blade Ball V1";
    Text = "By Wreston";
    Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"
})
Duration = 5;

local isAutoClickEnabled = false

-- Auto Click
Click.MouseButton1Click:Connect(function()
    isAutoClickEnabled = not isAutoClickEnabled

    if isAutoClickEnabled then
        print("Auto Click is enabled.")
        
        local function repeatFunction()
            local args = {
                [1] = 1.5,
                [2] = CFrame.new(-183.08358764648438, 125.93684387207031, 29.001541137695312, 0.9923487305641174, -0.07399874925613403, 0.09883421659469604, -3.500516765342354e-09, 0.8004931211471558, 0.5993419885635376, -0.12346666306257248, -0.5947562456130981, 0.794368326663971),
                [3] = {
                    ["4739402996"] = Vector3.new(381.4285583496094, 166.36497497558594, 13.439170837402344),
                    -- Diğer vektörleri buraya ekleyin
                },
                [4] = {
                    [1] = 576,
                    [2] = 20
                }
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ParryAttempt"):FireServer(unpack(args))
        end

        repeatFunction()
    else
        print("Auto Click is disabled.")
    end
end)

-- Close Button
closebutton.MouseButton1Click:Connect(function()
    main:Destroy()
end)
