import 'package:backdrop/backdrop.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import '../widgets/node_widget.dart';

class EditorPage extends StatelessWidget {
  void _onPointerDown(PointerDownEvent event, BuildContext context) async {
    if (event.kind == PointerDeviceKind.mouse && event.buttons == kSecondaryMouseButton) {
      final menuItem = await showMenu<int>(
          context: context,
          items: [
            PopupMenuItem(child: Text('Node 1'), value: 1),
            PopupMenuItem(child: Text('Node 2'), value: 2),
          ],
          position: RelativeRect.fromSize(event.position & Size(48.0, 48.0), (context.findRenderObject() as RenderBox).size));

      switch (menuItem) {
        default:
          break;
      }
    }
  }

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
            child: Listener(
              onPointerDown: (PointerDownEvent event) => {
                _onPointerDown(event, context),
              },
              child: Container(
                color: Colors.white, // Doesn't work without color: for some reason
              ),
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
