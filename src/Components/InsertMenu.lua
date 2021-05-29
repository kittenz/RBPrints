--!strict

local Roact = require(script.Parent.Parent.Libraries.Roact)

local InsertMenuButton = require(script.Parent.InsertMenuButton)

local function InsertMenu(props)
	return Roact.createElement("Frame", {
		AnchorPoint = Vector2.new(0, 0),
		Position = UDim2.new(0, props.mousePosition.X, 0, props.mousePosition.Y),
		Visible = props.visible,
		ZIndex = 3,
		BackgroundColor3 = Color3.fromRGB(63, 63, 63),
	}, {
		MenuButton = Roact.createElement(InsertMenuButton, {})
	})
end

return InsertMenu
