--!strict

local Roact = require(script.Libraries.Roact)
local EditorComponent = require(script.Components.Editor)

local toolbar = plugin:CreateToolbar("RBPrints")
local editorButton = toolbar:CreateButton("RBPrintsEditor", "Open the RBPrints editor.", "rbxassetid://4458901886")

local editorWidget: DockWidgetPluginGui
local editorWidgetInfo = DockWidgetPluginGuiInfo.new(
	Enum.InitialDockState.Float,  -- Widget will be initialized in floating panel
	false,   -- Widget will be initially disabled
	true,   -- Override the previous enabled state
	200,    -- Default width of the floating window
	300,    -- Default height of the floating window
	150,    -- Minimum width of the floating window
	150     -- Minimum height of the floating window
)

local function initializeWidget()
	editorWidget = plugin:CreateDockWidgetPluginGui("RBPrintsEditorWidget", editorWidgetInfo)
	editorWidget.Name = "RBPrints GUI"

	Roact.mount(
		Roact.createElement(EditorComponent, {}),
		editorWidget
	)
	editorWidget.Title = "RBPrints Editor"

	editorWidget.Enabled = true
end

editorButton.Click:Connect(function()
	if editorWidget then
		editorWidget.Enabled = not editorWidget.Enabled
	else
		initializeWidget()
	end
end)
