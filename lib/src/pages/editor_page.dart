import 'package:backdrop/backdrop.dart';
import 'package:flutter/material.dart';
import '../widgets/node_widget.dart';

class EditorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BackdropScaffold(
      appBar: BackdropAppBar(
        title: const Text('RBPrints'),
        actions: [],
      ),
      backLayer: Container(),
      frontLayer: Row(
        children: [
          Expanded(
            child: Stack(
              children: [
                Node(nodeType: NodeType.control),
              ],
            ),
            flex: 5,
          ),
          VerticalDivider(),
          Expanded(
            child: Container(),
            flex: 1,
          ),
        ],
      ),
    );
  }
}
