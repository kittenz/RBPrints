--!strict

local Roact = require(script.Parent.Parent.Libraries.Roact)

local Editor = Roact.Component:extend("RBPrintsEditor")

function Editor:render()
	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0)
	})
end

return Editor
