--!strict

local Roact = require(script.Parent.Parent.Libraries.Roact)

local function InsertMenu(props)
	return Roact.createElement("Frame", {
		AnchorPoint = Vector2.new(0, 0),
		Position = UDim2.new(0, props.mousePosition.X, 0, props.mousePosition.Y),
		Visible = props.visible,
		ZIndex = 3,
	})
end

return InsertMenu
