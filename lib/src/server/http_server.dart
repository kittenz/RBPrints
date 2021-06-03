import 'dart:io';

class Server {
  final int port;

  Server(this.port);

  void startServer() async {
    HttpServer.bind(InternetAddress.anyIPv6, 4520).then((server) => {
          server.listen((HttpRequest request) {
            // TODO: add code for sending the nodes as the response
            request.response.write('Not yet implemented');
            request.response.close();
          })
        });
  }
}
