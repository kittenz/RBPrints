import 'package:flutter/material.dart';

class StartServerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 500,
        height: 300,
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'localhost:4520',
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ElevatedButton(
                onPressed: () => {
                  // TODO: implement onPressed
                  throw new UnimplementedError(),
                },
                child: const Text('Start server'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
