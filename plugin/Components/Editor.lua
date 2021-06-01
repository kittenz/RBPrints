--!strict

local UserInputService = game:GetService("UserInputService")

local Roact = require(script.Parent.Parent.Libraries.Roact)

local InsertMenu = require(script.Parent.InsertMenu)

local Editor = Roact.Component:extend("RBPrintsEditor")

function Editor:init()
	self.insertMenuRef = Roact.createRef()
end

function Editor:render()
	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),

		[Roact.Event.InputBegan] = function(rbx, input)
			--if self.insertMenuRef:getValue() then
				if input.UserInputType == Enum.UserInputType.MouseButton2 then
					local insertMenu = self.insertMenuRef:getValue()
					local mousePosition = Vector2.new(input.Position.X, input.Position.Y)

					insertMenu.Position = UDim2.new(0, mousePosition.X, 0, mousePosition.Y)
					insertMenu.Visible = true
				elseif input.UserInputType == Enum.UserInputType.MouseButton1 then
					local insertMenu = self.insertMenuRef:getValue()

					insertMenu.Visible = false
				end
			--end
		end,
	}, {
		Roact.createElement(InsertMenu, {
			[Roact.Ref] = self.insertMenuRef,
		}),
	})
end

return Editor