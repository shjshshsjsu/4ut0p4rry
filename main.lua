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

Click.Name = "Click"
Click.Parent = Frame
Click.BackgroundColor3 = Color3.fromRGB(51, 51, 51)
Click.Size = UDim2.new(0, 55, 0, 55)
Click.Font = Enum.Font.SourceSans
Click.Text = "Auto Click"
Click.BorderColor3 = Color3.fromRGB(0, 0, 0)
Click.TextColor3 = Color3.fromRGB(0, 0, 0)

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

local autoClickEnabled = false

-- Auto Click
local function repeatFunction()
    local args = {
        [1] = 1.5,
        [2] = CFrame.new(-183.08358764648438, 125.93684387207031, 29.001541137695312, 0.9923487305641174, -0.07399874925613403, 0.09883421659469604, -3.500516765342354e-09, 0.8004931211471558, 0.5993419885635376, -0.12346666306257248, -0.5947562456130981, 0.794368326663971),
        [3] = {
            ["4739402996"] = Vector3.new(381.4285583496094, 166.36497497558594, 13.439170837402344),
            -- Diğer Vector3 değerleri buraya gelecek
        },
        [4] = {
            [1] = 576,
            [2] = 20
        }
    }

    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ParryAttempt"):FireServer(unpack(args))
end

Click.MouseButton1Click:Connect(function()
    autoClickEnabled = not autoClickEnabled
    if autoClickEnabled then
        print("Auto Click is enabled.")
        while autoClickEnabled do
            repeatFunction()
            wait(1)
        end
    else
        print("Auto Click is disabled.")
    end
end)

-- Close Button
closebutton.MouseButton1Click:Connect(function()
    main:Destroy()
end)
