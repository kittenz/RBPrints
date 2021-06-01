import 'package:flutter/material.dart';

import '../routes.dart';

class StartServerPage extends StatelessWidget {
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
                onPressed: () {
                  Navigator.pushNamed(context, Routes.editor);
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
