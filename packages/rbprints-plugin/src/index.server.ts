export {};

const toolbar = plugin.CreateToolbar('RBPrints');
const button = toolbar.CreateButton('EditorButton', '', '', 'Editor');

const widgetInfo = new DockWidgetPluginGuiInfo(
	Enum.InitialDockState.Right,
	true,
	false,
	200,
	300,
	150,
	150,
);

button.Click.Connect(() => {
	let widget = plugin.CreateDockWidgetPluginGui('RBPrintsEditor', widgetInfo);
	widget.Title = 'RBPrints Editor';
});
