local PlayerManager = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local title = Instance.new("TextLabel")
local close = Instance.new("ImageButton")
local container_scroll = Instance.new("Frame")
local scroll1 = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local card = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local picture = Instance.new("ImageLabel")
local UICorner_3 = Instance.new("UICorner")
local username = Instance.new("TextLabel")
local displayname = Instance.new("TextLabel")
local description = Instance.new("TextLabel")
local UIPadding = Instance.new("UIPadding")
local UICorner_4 = Instance.new("UICorner")
local menu = Instance.new("ImageButton")
local menu_btn = Instance.new("ImageButton")

PlayerManager.Name = "PlayerManager"
PlayerManager.Parent = game.CoreGui

main.Name = "main"
main.Parent = PlayerManager
main.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
main.Position = UDim2.new(0.333123833, 0, 0.320619792, 0)
main.Size = UDim2.new(0, 311, 0, 300)

UICorner.CornerRadius = UDim.new(0, 16)
UICorner.Parent = main

close.Name = "close"
close.Parent = main
close.BackgroundTransparency = 1.000
close.Position = UDim2.new(0.902604461, 0, 0.026666671, 0)
close.Size = UDim2.new(0, 21, 0, 21)
close.Image = "rbxassetid://7072725342"

container_scroll.Name = "container_scroll"
container_scroll.Parent = main
container_scroll.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
container_scroll.BorderSizePixel = 0
container_scroll.Position = UDim2.new(0, 0, 0.123333335, 0)
container_scroll.Size = UDim2.new(0, 311, 0, 263)

scroll1.Name = "scroll1"
scroll1.Parent = container_scroll
scroll1.Active = true
scroll1.BorderSizePixel = 0
scroll1.BackgroundTransparency = 1.000
scroll1.Position = UDim2.new(0, 0, -0.00214195251, 0)
scroll1.Size = UDim2.new(0, 311, 0, 263)

UIListLayout.Parent = scroll1
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 8)

UIPadding.Parent = scroll1
UIPadding.PaddingLeft = UDim.new(0, 14)
UIPadding.PaddingTop = UDim.new(0, 10)

UICorner_4.CornerRadius = UDim.new(0, 16)
UICorner_4.Parent = container_scroll

menu_btn.Name = "menu_btn"
menu_btn.Parent = main
menu_btn.BackgroundTransparency = 1.000
menu_btn.Position = UDim2.new(0.0225080382, 0, 0.0199999809, 0)
menu_btn.Size = UDim2.new(0, 78, 0, 24)
menu_btn.ImageTransparency = 1.000

title.Name = "title"
title.Parent = menu_btn
title.BackgroundTransparency = 1.000
title.Position = UDim2.new(0.219851732, 0, 0.128787875, 0)
title.Size = UDim2.new(0, 60, 0, 20)
title.Font = Enum.Font.GothamSemibold
title.Text = "Players"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 16.000

menu.Name = "menu"
menu.Parent = title
menu.BackgroundTransparency = 1.000
menu.Position = UDim2.new(-0.289999992, 0, -0.0280000009, 0)
menu.Size = UDim2.new(0, 21, 0, 21)
menu.Image = "rbxassetid://7072706796"


---------------------------------------------------------------------------


local tweenservice = game:GetService("TweenService")
local mouse = game:GetService("Players").LocalPlayer:GetMouse()

local function makedraggable(frame)
	frame.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			local offset = Vector2.new(frame.AbsoluteSize.X * frame.AnchorPoint.X, frame.AbsoluteSize.Y * frame.AnchorPoint.Y)
			local pos = Vector2.new(mouse.X - (frame.AbsolutePosition.X + offset.X), mouse.Y - (frame.AbsolutePosition.Y + offset.Y))
			local mouseconn, inputconn
			mouseconn = mouse.Move:Connect(function()
				tweenservice:Create(frame, TweenInfo.new(0.125), { Position = UDim2.new(0, mouse.X - pos.X, 0, mouse.Y - pos.Y) }):Play()
			end)
			inputconn = input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					mouseconn:Disconnect()
					inputconn:Disconnect()
				end
			end)
		end
	end)
end
makedraggable(main)

scroll1.UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    scroll1.CanvasSize = UDim2.new(0, 0, 0, scroll1.UIListLayout.AbsoluteContentSize.Y * 1.1)
end)
close.MouseEnter:Connect(function()
	close.ImageColor3 = Color3.fromRGB(176, 176, 176)
end)
close.MouseLeave:Connect(function()
	close.ImageColor3 = Color3.fromRGB(255,255,255)
end)
close.Activated:Connect(function()
    PlayerManager:Destroy()
end)
menu_btn.MouseEnter:Connect(function()
	menu.ImageColor3 = Color3.fromRGB(176, 176, 176)
    title.TextColor3 = Color3.fromRGB(176, 176, 176)
end)
menu_btn.MouseLeave:Connect(function()
	menu.ImageColor3 = Color3.fromRGB(255,255,255)
    title.TextColor3 = Color3.fromRGB(255,255,255)
end)

function createCard(plr)
    local card = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local picture = Instance.new("ImageLabel")
    local UICorner_2 = Instance.new("UICorner")
    local username = Instance.new("TextLabel")
    local displayname = Instance.new("TextLabel")
    local description = Instance.new("TextLabel")
    local tweenservice = game:GetService("TweenService")
    local mouse = game:GetService("Players").LocalPlayer:GetMouse()

    card.Name = "card"
    card.Parent = scroll1
    card.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
    card.ClipsDescendants = true
    card.Position = UDim2.new(0, 0, -1.20622843e-07, 0)
    card.Size = UDim2.new(0, 273, 0, 64)
    UICorner.Parent = card

    picture.Name = "picture"
    picture.Image = game:GetService("Players"):GetUserThumbnailAsync(plr.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420)
    picture.Parent = card
    picture.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    picture.BackgroundTransparency = 0.500
    picture.Position = UDim2.new(0.025641026, 0, 0.0998558998, 0)
    picture.Size = UDim2.new(0, 50, 0, 50)
    UICorner_2.CornerRadius = UDim.new(0, 6)
    UICorner_2.Parent = picture

    username.Name = "username"
    username.Parent = picture
    username.BackgroundTransparency = 1.000
    username.Position = UDim2.new(1.18400002, 0, 0.34799999, 0)
    username.Size = UDim2.new(0, 200, 0, 21)
    username.Font = Enum.Font.GothamSemibold
    username.Text = '@'..plr.Name
    username.TextColor3 = Color3.fromRGB(195, 195, 195)
    username.TextSize = 12.000
    username.TextWrapped = true
    username.TextXAlignment = Enum.TextXAlignment.Left
    username.TextYAlignment = Enum.TextYAlignment.Top

    displayname.Name = "displayname"
    displayname.Parent = picture
    displayname.BackgroundTransparency = 1.000
    displayname.Position = UDim2.new(1.18390262, 0, -0.00170471193, 0)
    displayname.Size = UDim2.new(0, 200, 0, 18)
    displayname.Font = Enum.Font.GothamSemibold
    displayname.Text = plr.DisplayName
    displayname.TextColor3 = Color3.fromRGB(255, 255, 255)
    displayname.TextSize = 15.000
    displayname.TextXAlignment = Enum.TextXAlignment.Left

    description.Name = "description"
    description.Parent = picture
    description.BackgroundTransparency = 1.000
    description.Position = UDim2.new(1.18400002, 0, 0.698000014, 0)
    description.Size = UDim2.new(0, 200, 0, 18)
    description.Font = Enum.Font.GothamSemibold
    description.Text = "Click to see more options"
    description.TextColor3 = Color3.fromRGB(130, 130, 130)
    description.TextSize = 12.000
    description.TextWrapped = true
    description.TextXAlignment = Enum.TextXAlignment.Left
    description.TextYAlignment = Enum.TextYAlignment.Top

    game.Players.PlayerRemoving:Connect(function(player)
        if plr == player then
            card:Destroy()
        end
    end)

    card.MouseEnter:Connect(function()
        card.BackgroundColor3 = Color3.fromRGB(36,36,36)
    end)
    
    card.MouseLeave:Connect(function()
        card.BackgroundColor3 = Color3.fromRGB(16,16,16)
    end)

    card.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            pcall(function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = plr.Character.HumanoidRootPart.CFrame
            end)

            local Ripple = Instance.new("ImageLabel")
            Ripple.Name = "Circle"
            Ripple.Parent = card
            Ripple.AnchorPoint = Vector2.new(0.5, 0.5)
            Ripple.BackgroundTransparency = 1
            Ripple.ZIndex = 10
            Ripple.Image = "rbxassetid://266543268"
            Ripple.ImageColor3 = Color3.fromRGB(210, 210, 210)
            Ripple.ImageTransparency = 0.8
            Ripple.ScaleType = Enum.ScaleType.Crop
            Ripple.Position = UDim2.new(0, (mouse.X - card.AbsolutePosition.X), 0, (mouse.Y - card.AbsolutePosition.Y))
            Ripple.Size = UDim2.new(0, 0, 2, 0)
            local ExpandRipple = tweenservice:Create(Ripple, TweenInfo.new(0.25), {
                ImageTransparency = 1,
                Size = UDim2.new(1, 0, 2, 0),
            })
            ExpandRipple:Play()
            ExpandRipple.Completed:Wait()
            Ripple:Destroy()
        end	
    end)
end

for i, v in pairs(game.Players:GetChildren()) do 
    createCard(v)
end
