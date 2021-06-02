import 'package:flutter/material.dart';

enum NodeType {
  event,
  control,
}

class Node extends StatelessWidget {
  /// The type of the node.
  final NodeType nodeType;

  Node({
    Key? key,
    required this.nodeType,
  });

  Color _getWidgetColor() {
    switch (nodeType) {
      case NodeType.control:
        return Color.fromARGB(255, 100, 100, 100);
      case NodeType.event:
        return Color.fromARGB(255, 100, 20, 20);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      height: 210,
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: _getWidgetColor(),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(4.0),
                    topRight: Radius.circular(4.0),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(),
            )
          ],
        ),
      ),
    );
  }
}
