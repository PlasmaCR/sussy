local PlayerManager = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local title = Instance.new("TextLabel")
local close = Instance.new("ImageButton")
local container_scroll = Instance.new("Frame")
local scroll1 = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local UIPadding = Instance.new("UIPadding")
local UICorner_4 = Instance.new("UICorner")
local menu = Instance.new("ImageButton")
local menu_btn = Instance.new("ImageButton")
local dropdown = Instance.new("Frame")
local UICorner_5 = Instance.new("UICorner")
local UIListLayout_2 = Instance.new("UIListLayout")
local btn = Instance.new("TextButton")
local btn_title = Instance.new("TextLabel")
local description_2 = Instance.new("TextLabel")
local UIPadding_2 = Instance.new("UIPadding")
local btn_2 = Instance.new("TextButton")
local btn_title_2 = Instance.new("TextLabel")
local description_3 = Instance.new("TextLabel")
local TweenService = game:GetService"TweenService"
local tween1 = TweenService:Create(
    menu,--whatever should be tweened
    TweenInfo.new(0.2),--how the tween should act
    {
        Rotation = 0--set rotation to whatever it should be
    }
)
local tween2 = TweenService:Create(
    menu,--whatever should be tweened
    TweenInfo.new(0.2),--how the tween should act
    {
        Rotation = 180--set rotation to whatever it should be
    }
)
getgenv().dropdown = false

PlayerManager.Name = "PlayerManager"
PlayerManager.Parent = game.CoreGui

main.Name = "main"
main.Parent = PlayerManager
main.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
main.Position = UDim2.new(0.333123833, 0, 0.320619792, 0)
main.Size = UDim2.new(0, 311, 0, 300)
main.Active = true

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
menu.Rotation = 180
menu.Image = "rbxassetid://7072706796"

dropdown.Name = "dropdown"
dropdown.Parent = main
dropdown.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
dropdown.ClipsDescendants = true
dropdown.Size = UDim2.new(0, 117,0, 127)
dropdown.Visible = false
dropdown.ZIndex = 0

UICorner_5.CornerRadius = UDim.new(0, 16)
UICorner_5.Parent = dropdown

UIListLayout_2.Parent = dropdown
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder

btn.Name = "btn"
btn.Parent = dropdown
btn.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
btn.BorderSizePixel = 0
btn.Size = UDim2.new(0, 117, 0, 37)
btn.ZIndex = 0
btn.Font = Enum.Font.GothamSemibold
btn.Text = ""
btn.TextColor3 = Color3.fromRGB(255, 255, 255)
btn.TextSize = 15.000

btn_title.Name = "btn_title"
btn_title.Parent = btn
btn_title.BackgroundTransparency = 1.000
btn_title.Position = UDim2.new(0.0399999991, 0, 0.0599999987, 0)
btn_title.Size = UDim2.new(0, 53, 0, 20)
btn_title.ZIndex = 0
btn_title.Font = Enum.Font.GothamSemibold
btn_title.Text = "Players"
btn_title.TextColor3 = Color3.fromRGB(255, 255, 255)
btn_title.TextSize = 15.000
btn_title.TextXAlignment = Enum.TextXAlignment.Left

description_2.Name = "description"
description_2.Parent = btn
description_2.BackgroundTransparency = 1.000
description_2.Position = UDim2.new(0.0399999991, 0, 0.537999988, 0)
description_2.Size = UDim2.new(0, 105, 0, 21)
description_2.ZIndex = 0
description_2.Font = Enum.Font.GothamSemibold
description_2.Text = "A list of all Players"
description_2.TextColor3 = Color3.fromRGB(130, 130, 130)
description_2.TextSize = 12.000
description_2.TextWrapped = true
description_2.TextXAlignment = Enum.TextXAlignment.Left
description_2.TextYAlignment = Enum.TextYAlignment.Top

UIPadding_2.Parent = dropdown
UIPadding_2.PaddingTop = UDim.new(0, 13)

btn_2.Name = "btn"
btn_2.Parent = dropdown
btn_2.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
btn_2.BorderSizePixel = 0
btn_2.Size = UDim2.new(0, 117, 0, 37)
btn_2.ZIndex = 0
btn_2.Font = Enum.Font.GothamSemibold
btn_2.Text = ""
btn_2.TextColor3 = Color3.fromRGB(255, 255, 255)
btn_2.TextSize = 15.000

btn_title_2.Name = "btn_title"
btn_title_2.Parent = btn_2
btn_title_2.BackgroundTransparency = 1.000
btn_title_2.Position = UDim2.new(0.0399999991, 0, 0.0599999987, 0)
btn_title_2.Size = UDim2.new(0, 53, 0, 20)
btn_title_2.ZIndex = 0
btn_title_2.Font = Enum.Font.GothamSemibold
btn_title_2.Text = "Scripts"
btn_title_2.TextColor3 = Color3.fromRGB(255, 255, 255)
btn_title_2.TextSize = 15.000
btn_title_2.TextXAlignment = Enum.TextXAlignment.Left

description_3.Name = "description"
description_3.Parent = btn_2
description_3.BackgroundTransparency = 1.000
description_3.Position = UDim2.new(0.0399999991, 0, 0.537999988, 0)
description_3.Size = UDim2.new(0, 105, 0, 21)
description_3.ZIndex = 0
description_3.Font = Enum.Font.GothamSemibold
description_3.Text = "Available Scripts"
description_3.TextColor3 = Color3.fromRGB(130, 130, 130)
description_3.TextSize = 12.000
description_3.TextWrapped = true
description_3.TextXAlignment = Enum.TextXAlignment.Left
description_3.TextYAlignment = Enum.TextYAlignment.Top


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
menu_btn.Activated:Connect(function()
    if not getgenv().dropdown then
        tween1:Play()
        getgenv().dropdown = true
        dropdown.Visible = true
        dropdown:TweenPosition(UDim2.new(0, 0, -0.327, 0),Enum.EasingDirection.Out,Enum.EasingStyle.Sine, 0.2, true)
    else
        tween2:Play()
        getgenv().dropdown = false
        dropdown:TweenPosition(UDim2.new(0, 0, 0, 0),Enum.EasingDirection.In,Enum.EasingStyle.Sine, 0.2, true)
        wait(0.2)
        dropdown.Visible = false
    end
end)

function createCard(plr)
    local card = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local picture = Instance.new("ImageLabel")
    local UICorner_2 = Instance.new("UICorner")
    local username = Instance.new("TextLabel")
    local displayname = Instance.new("TextLabel")
    local description = Instance.new("TextLabel")
    local overlay = Instance.new("Frame")
    local UICorner_4 = Instance.new("UICorner")
    local unview = Instance.new("ImageButton")
    local UIGridLayout = Instance.new("UIGridLayout")
    local teleport = Instance.new("ImageButton")
    local view = Instance.new("ImageButton")
    local info = Instance.new("ImageButton")
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

    overlay.Name = "overlay"
    overlay.Parent = card
    overlay.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
    overlay.BackgroundTransparency = 0.200
    overlay.Size = UDim2.new(0, 273, 0, 64)
    overlay.Position = UDim2.new(0,0,-1,0)
    overlay.Active = true

    UICorner_4.Parent = overlay

    unview.Name = "unview"
    unview.Parent = overlay
    unview.BackgroundTransparency = 1.000
    unview.Position = UDim2.new(0.107732654, 0, 0.354791671, 0)
    unview.Size = UDim2.new(0, 21, 0, 21)
    unview.Image = "rbxassetid://7072984146"

    UIGridLayout.Parent = overlay
    UIGridLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIGridLayout.VerticalAlignment = Enum.VerticalAlignment.Center
    UIGridLayout.CellPadding = UDim2.new(0, 20, 0, 0)
    UIGridLayout.CellSize = UDim2.new(0, 25, 0, 25)

    teleport.Name = "teleport"
    teleport.Parent = overlay
    teleport.BackgroundTransparency = 1.000
    teleport.Position = UDim2.new(0.107732654, 0, 0.354791671, 0)
    teleport.Size = UDim2.new(0, 21, 0, 21)
    teleport.Image = "rbxassetid://7072718631"

    view.Name = "view"
    view.Parent = overlay
    view.BackgroundTransparency = 1.000
    view.Position = UDim2.new(0.107732654, 0, 0.354791671, 0)
    view.Size = UDim2.new(0, 21, 0, 21)
    view.Image = "rbxassetid://7072716095"

    info.Name = "info"
    info.Parent = overlay
    info.BackgroundTransparency = 1.000
    info.Position = UDim2.new(0.107732654, 0, 0.354791671, 0)
    info.Size = UDim2.new(0, 21, 0, 21)
    info.Image = "rbxassetid://7072717857"

    game.Players.PlayerRemoving:Connect(function(player)
        if plr == player then
            card:Destroy()
        end
    end)

    card.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
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
                overlay:TweenPosition(UDim2.new(0, 0, 0, 0),Enum.EasingDirection.In,Enum.EasingStyle.Sine, 0.2, true)
        end
    end)

    overlay.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton2 then
            overlay:TweenPosition(UDim2.new(0, 0, -1, 0),Enum.EasingDirection.Out,Enum.EasingStyle.Sine, 0.2, true)
        end
    end)
    
    info.MouseEnter:Connect(function()
        info.ImageColor3 = Color3.fromRGB(176, 176, 176)
    end)
    info.MouseLeave:Connect(function()
        info.ImageColor3 = Color3.fromRGB(255,255,255)
    end)
    view.MouseEnter:Connect(function()
        view.ImageColor3 = Color3.fromRGB(176, 176, 176)
    end)
    view.MouseLeave:Connect(function()
        view.ImageColor3 = Color3.fromRGB(255,255,255)
    end)
    unview.MouseEnter:Connect(function()
        unview.ImageColor3 = Color3.fromRGB(176, 176, 176)
    end)
    unview.MouseLeave:Connect(function()
        unview.ImageColor3 = Color3.fromRGB(255,255,255)
    end)
    teleport.MouseEnter:Connect(function()
        teleport.ImageColor3 = Color3.fromRGB(176, 176, 176)
    end)
    teleport.MouseLeave:Connect(function()
        teleport.ImageColor3 = Color3.fromRGB(255,255,255)
    end)
    teleport.Activated:Connect(function()
        pcall(function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = plr.Character.HumanoidRootPart.CFrame
        end)
    end)
end

for i, v in pairs(game.Players:GetChildren()) do 
    createCard(v)
end

game.Players.PlayerAdded:Connect(function(player)
    createCard(player)
end)