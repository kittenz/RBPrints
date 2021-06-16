import { contextBridge, ipcRenderer } from 'electron';

contextBridge.exposeInMainWorld(
	'api', {
		send: (channel: string, ...data: any[]) => {
			let validChannels = ['server'];

			if (validChannels.includes(channel)) {
				ipcRenderer.send(channel, data);
			}
		}
	}
);
