local main = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Auto = Instance.new("TextButton")

main.Name = "main"
main.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
main.ResetOnSpawn = false 

Frame.Parent = main
Frame.BackgroundColor3 = Color3.fromRGB(54, 54, 54)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.Position = UDim2.new(0.100320168, 0, 0.379746825, 0)
Frame.Size = UDim2.new(0, 190, 0, 57) 

Auto.Name = "up"
Auto.Parent = Frame
Auto.BackgroundColor3 = Color3.fromRGB(51, 51, 51)
Auto.Size = UDim2.new(0, 44, 0, 28)
Auto.Font = Enum.Font.SourceSans
Auto.Text = "Auto Parry"
Auto.TextColor3 = Color3.fromRGB(0, 0, 0)
Auto.TextSize = 14.000 
