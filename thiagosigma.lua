--// 🌸 SUPER KAWAII GLASS PIX UI 🌸
--// pink aesthetic • seamless glass • potassium friendly

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local UIS = game:GetService("UserInputService")

local player = Players.LocalPlayer
local guiParent = player:WaitForChild("PlayerGui")

local PIX = "00020101021226740014br.gov.bcb.pix2552pix.ebanx.com/qr/v2/73D05BB5D76DDF1B2510162ED82F479E5204000053039865802BR5911Ebanx LTDA.6008CURITIBA62070503***6304F46F"

local QR_URL = "https://cdn.discordapp.com/attachments/1240489889460387970/1508652342533292193/live_YWNjdF8xTWI1d0xBUVNqU1NLeDRxLF9VYUtqNU5VUGxrU2RkcjdLQ1BVTHhKck9mdmNWN2Z60100R2Wlm7US.png"

local HELLOKITTY_URL = "https://i.pinimg.com/736x/08/c0/a7/08c0a71447d4dc10e8e869ae5dafa273.jpg"

pcall(function()
	guiParent:FindFirstChild("CuteGlassPix"):Destroy()
end)

-- gui
local gui = Instance.new("ScreenGui")
gui.Name = "CuteGlassPix"
gui.IgnoreGuiInset = true
gui.ResetOnSpawn = false
gui.Parent = guiParent

-- background
local bg = Instance.new("Frame")
bg.Size = UDim2.fromScale(1,1)
bg.BackgroundColor3 = Color3.fromRGB(255,205,230)
bg.Parent = gui

-- floating white dots
for i = 1,120 do
	local dot = Instance.new("Frame")
	dot.AnchorPoint = Vector2.new(0.5,0.5)

	local size = math.random(2,10)

	dot.Size = UDim2.new(0,size,0,size)
	dot.Position = UDim2.new(math.random(),0,math.random(),0)

	dot.BackgroundColor3 = Color3.new(1,1,1)
	dot.BackgroundTransparency = math.random(15,50)/100
	dot.BorderSizePixel = 0

	local c = Instance.new("UICorner")
	c.CornerRadius = UDim.new(1,0)
	c.Parent = dot

	dot.Parent = bg

	task.spawn(function()
		while dot.Parent do
			local newPos = dot.Position + UDim2.new(
				0,
				math.random(-25,25),
				0,
				math.random(-25,25)
			)

			TweenService:Create(
				dot,
				TweenInfo.new(
					math.random(4,10),
					Enum.EasingStyle.Sine,
					Enum.EasingDirection.InOut
				),
				{
					Position = newPos
				}
			):Play()

			task.wait(math.random(4,10))
		end
	end)
end

-- glass frame
local main = Instance.new("Frame")
main.Size = UDim2.new(0,0,0,0)
main.Position = UDim2.new(0.5,-450,0.5,-260)
main.BackgroundColor3 = Color3.fromRGB(255,255,255)
main.BackgroundTransparency = 0.25
main.BorderSizePixel = 0
main.Parent = gui

local mainCorner = Instance.new("UICorner")
mainCorner.CornerRadius = UDim.new(0,35)
mainCorner.Parent = main

local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(255,255,255)
stroke.Thickness = 2
stroke.Transparency = 0.15
stroke.Parent = main

local grad = Instance.new("UIGradient")
grad.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0,Color3.fromRGB(255,255,255)),
	ColorSequenceKeypoint.new(1,Color3.fromRGB(255,220,235))
}
grad.Rotation = 90
grad.Parent = main

TweenService:Create(
	main,
	TweenInfo.new(
		0.9,
		Enum.EasingStyle.Back,
		Enum.EasingDirection.Out
	),
	{
		Size = UDim2.new(0,900,0,520)
	}
):Play()

-- top blur shine
local shine = Instance.new("Frame")
shine.Size = UDim2.new(1,0,0,120)
shine.BackgroundColor3 = Color3.new(1,1,1)
shine.BackgroundTransparency = 0.88
shine.BorderSizePixel = 0
shine.Parent = main

local shineCorner = Instance.new("UICorner")
shineCorner.CornerRadius = UDim.new(0,35)
shineCorner.Parent = shine

-- title
local title = Instance.new("TextLabel")
title.BackgroundTransparency = 1
title.Size = UDim2.new(1,0,0,60)
title.Position = UDim2.new(0,0,0,10)
title.Text = "🌸 thiago compre o potassium 🌸"
title.Font = Enum.Font.FredokaOne
title.TextScaled = true
title.TextColor3 = Color3.fromRGB(255,105,180)
title.Parent = main

-- parcelamento text
local parc = Instance.new("TextLabel")
parc.BackgroundTransparency = 1
parc.Size = UDim2.new(1,0,0,35)
parc.Position = UDim2.new(0,0,0,65)
parc.Text = "💳 parcele em até 4x ou 6x sem stress 💖"
parc.Font = Enum.Font.GothamBold
parc.TextSize = 22
parc.TextColor3 = Color3.fromRGB(255,130,190)
parc.Parent = main

-- hello kitty
local kitty = Instance.new("ImageLabel")
kitty.BackgroundTransparency = 1
kitty.Size = UDim2.new(0,180,0,180)
kitty.Position = UDim2.new(0,25,0,115)
kitty.Image = HELLOKITTY_URL
kitty.Parent = main

local kittyCorner = Instance.new("UICorner")
kittyCorner.CornerRadius = UDim.new(1,0)
kittyCorner.Parent = kitty

-- qr code
local qr = Instance.new("ImageLabel")
qr.Size = UDim2.new(0,250,0,250)
qr.Position = UDim2.new(1,-285,0,120)
qr.Image = QR_URL
qr.BackgroundColor3 = Color3.fromRGB(255,255,255)
qr.BackgroundTransparency = 0.08
qr.BorderSizePixel = 0
qr.Parent = main

local qrCorner = Instance.new("UICorner")
qrCorner.CornerRadius = UDim.new(0,25)
qrCorner.Parent = qr

local qrStroke = Instance.new("UIStroke")
qrStroke.Color = Color3.fromRGB(255,255,255)
qrStroke.Transparency = 0.2
qrStroke.Parent = qr

-- pix textbox
local box = Instance.new("TextBox")
box.Size = UDim2.new(0,380,0,180)
box.Position = UDim2.new(0.5,-190,0,150)

box.BackgroundColor3 = Color3.fromRGB(255,255,255)
box.BackgroundTransparency = 0.18

box.TextColor3 = Color3.fromRGB(70,70,70)
box.PlaceholderText = ""
box.Text = PIX

box.MultiLine = true
box.ClearTextOnFocus = false
box.TextWrapped = true
box.TextEditable = false

box.Font = Enum.Font.Code
box.TextSize = 15

box.Parent = main

local boxCorner = Instance.new("UICorner")
boxCorner.CornerRadius = UDim.new(0,24)
boxCorner.Parent = box

local boxStroke = Instance.new("UIStroke")
boxStroke.Color = Color3.fromRGB(255,255,255)
boxStroke.Transparency = 0.25
boxStroke.Parent = box

-- copy button
local copy = Instance.new("TextButton")
copy.Size = UDim2.new(0,320,0,62)
copy.Position = UDim2.new(0.5,-160,1,-90)

copy.BackgroundColor3 = Color3.fromRGB(255,255,255)
copy.BackgroundTransparency = 0.1

copy.Text = "💖 copiar pix kawaii 💖"
copy.TextColor3 = Color3.fromRGB(255,105,180)

copy.Font = Enum.Font.FredokaOne
copy.TextSize = 25

copy.AutoButtonColor = false
copy.Parent = main

local copyCorner = Instance.new("UICorner")
copyCorner.CornerRadius = UDim.new(1,0)
copyCorner.Parent = copy

local copyStroke = Instance.new("UIStroke")
copyStroke.Color = Color3.fromRGB(255,255,255)
copyStroke.Transparency = 0.2
copyStroke.Parent = copy

-- hearts
local function spawnHeart()
	local h = Instance.new("TextLabel")

	h.BackgroundTransparency = 1
	h.Text = "💖"
	h.Font = Enum.Font.GothamBold
	h.TextScaled = true

	h.Size = UDim2.new(0,30,0,30)

	h.Position = UDim2.new(
		0,
		math.random(100,800),
		1,
		-110
	)

	h.Parent = main

	TweenService:Create(
		h,
		TweenInfo.new(
			1.2,
			Enum.EasingStyle.Quad,
			Enum.EasingDirection.Out
		),
		{
			Position = h.Position - UDim2.new(0,math.random(-40,40),0,150),
			Rotation = math.random(-45,45),
			TextTransparency = 1
		}
	):Play()

	task.delay(1.2,function()
		h:Destroy()
	end)
end

-- clipboard support
local function copyClipboard(text)
	local ok = false

	pcall(function()
		if setclipboard then
			setclipboard(text)
			ok = true
		elseif toclipboard then
			toclipboard(text)
			ok = true
		end
	end)

	return ok
end

-- copy click
copy.MouseButton1Click:Connect(function()

	local ok = copyClipboard(PIX)

	for i = 1,30 do
		spawnHeart()
		task.wait(0.02)
	end

	if ok then
		copy.Text = "✨ pix copiado com sucesso ✨"
		copy.TextColor3 = Color3.fromRGB(120,220,160)
	else
		copy.Text = "⚠ clipboard indisponível"
	end

	TweenService:Create(
		copy,
		TweenInfo.new(0.15),
		{
			Size = UDim2.new(0,350,0,68)
		}
	):Play()

	task.wait(0.2)

	TweenService:Create(
		copy,
		TweenInfo.new(0.15),
		{
			Size = UDim2.new(0,320,0,62)
		}
	):Play()

	task.wait(2)

	copy.Text = "💖 copiar pix kawaii 💖"
	copy.TextColor3 = Color3.fromRGB(255,105,180)
end)

-- hover effect
copy.MouseEnter:Connect(function()
	TweenService:Create(
		copy,
		TweenInfo.new(0.15),
		{
			BackgroundTransparency = 0
		}
	):Play()
end)

copy.MouseLeave:Connect(function()
	TweenService:Create(
		copy,
		TweenInfo.new(0.15),
		{
			BackgroundTransparency = 0.1
		}
	):Play()
end)

-- draggable
local dragging = false
local dragInput
local dragStart
local startPos

main.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging = true
		dragStart = input.Position
		startPos = main.Position

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

main.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement then
		dragInput = input
	end
end)

UIS.InputChanged:Connect(function(input)
	if dragging and input == dragInput then
		local delta = input.Position - dragStart

		main.Position = UDim2.new(
			startPos.X.Scale,
			startPos.X.Offset + delta.X,
			startPos.Y.Scale,
			startPos.Y.Offset + delta.Y
		)
	end
end)

-- floating animation
task.spawn(function()
	while main.Parent do

		TweenService:Create(
			main,
			TweenInfo.new(
				2.5,
				Enum.EasingStyle.Sine,
				Enum.EasingDirection.InOut
			),
			{
				Position = main.Position + UDim2.new(0,0,0,-6)
			}
		):Play()

		task.wait(2.5)

		TweenService:Create(
			main,
			TweenInfo.new(
				2.5,
				Enum.EasingStyle.Sine,
				Enum.EasingDirection.InOut
			),
			{
				Position = main.Position + UDim2.new(0,0,0,6)
			}
		):Play()

		task.wait(2.5)
	end
end)

-- animated glow border
task.spawn(function()
	while task.wait() do
		stroke.Color = Color3.fromHSV(
			(tick()*0.05)%1,
			0.35,
			1
		)
	end
end)
