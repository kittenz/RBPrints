import { defaultPort } from '../../config';
import * as http from 'http';

class HttpServer {
	private server: http.Server

	constructor() {
		this.server = http.createServer(this.handleRequest);
	}

	private handleRequest(req: http.IncomingMessage, res: http.ServerResponse) {
		res.writeHead(200);
		res.end('Server class isn\'t done yet!');
	}

	start(port?: number) {
		const listenPort = port ?? defaultPort;

		this.server.listen(listenPort);
	}

	stop() {
		this.server.close();
	}
}

export default HttpServer;
