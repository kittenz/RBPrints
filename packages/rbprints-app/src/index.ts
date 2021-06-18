import { app, BrowserWindow, ipcMain } from 'electron';
import path from 'path';
import HttpServer from './lib/server/server';

const server = new HttpServer();

function createWindow() {
	let mainWindow = new BrowserWindow({
		width: 800,
		height: 600,
		webPreferences: {
			preload: path.join(__dirname, 'preload.js'),
		},
	});

	mainWindow.loadFile('public/index.html');
}

app.whenReady().then(() => {
	createWindow();
	
	app.on('activate', function () {
		if (BrowserWindow.getAllWindows().length === 0) createWindow();
	});
});

app.on('window-all-closed', () => {
	if (process.platform !== 'darwin') app.quit();
});

// *** IPC LISTENERS ***

ipcMain.on('server', (event, args) => {
	if (args[0] === 'start') server.start();
});
