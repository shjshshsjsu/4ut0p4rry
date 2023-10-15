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
Click.Position = UDim2.new(0, 0, 0, 0)
Click.Size = UDim2.new(0, 55, 0, 55)
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

Click.MouseButton1Click:Connect(function()
        
local function repeatFunction()
local args = {
    [1] = 1.5,
    [2] = CFrame.new(-183.08358764648438, 125.93684387207031, 29.001541137695312, 0.9923487305641174, -0.07399874925613403, 0.09883421659469604, -3.500516765342354e-09, 0.8004931211471558, 0.5993419885635376, -0.12346666306257248, -0.5947562456130981, 0.794368326663971),
    [3] = {
        ["4739402996"] = Vector3.new(381.4285583496094, 166.36497497558594, 13.439170837402344),
        ["4698988182"] = Vector3.new(151.357666015625, -31.675270080566406, 172.19485473632812),
        ["4983246157"] = Vector3.new(231.7171630859375, -33.25200271606445, 189.7061767578125),
        ["2946860816"] = Vector3.new(507.7857971191406, -11.362686157226562, 77.76585388183594),
        ["4037078295"] = Vector3.new(-33.82518005371094, 33.11266326904297, 35.35573959350586),
        ["3779835532"] = Vector3.new(563.922119140625, 17.438358306884766, 43.821197509765625),
        ["3809417605"] = Vector3.new(4343.00048828125, -527.385498046875, -6.04376220703125),
        ["2856072247"] = Vector3.new(-1041.7279052734375, 49.149375915527344, 29.675430297851562),
        ["4372394487"] = Vector3.new(-5368.81201171875, 415.55633544921875, 6.2322845458984375),
        ["3754579535"] = Vector3.new(416.7735290527344, -29.794065475463867, 154.7155303955078),
        ["2379387513"] = Vector3.new(46.110862731933594, -28.232654571533203, 142.65443420410156),
        ["5083442215"] = Vector3.new(441.3191833496094, -22.034446716308594, 109.35098266601562),
        ["1132289798"] = Vector3.new(261.82110595703125, -33.33921813964844, 190.79974365234375),
        ["3106987126"] = Vector3.new(-100.07638549804688, -12.875110626220703, 82.34508514404297),
        ["2633974446"] = Vector3.new(-152.526123046875, -45.56947708129883, 97.73800659179688),
        ["2727012830"] = Vector3.new(359.2359619140625, -32.44017028808594, 180.25506591796875)
    },
    [4] = {
        [1] = 576,
        [2] = 20
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ParryAttempt"):FireServer(unpack(args))
        end
while true do
    repeatFunction()
    wait(1)
        end
end) 
