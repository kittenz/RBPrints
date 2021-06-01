--!strict

local Roact = require(script.Parent.Parent.Libraries.Roact)

local function InsertMenuButton(props)
	return Roact.createElement("TextButton", {
		Size = UDim2.new(1, 0, 0.2, 0),
		Position = UDim2.new(0, 0, 0, 0),
		Text = "Node",
	})
end

return InsertMenuButton
