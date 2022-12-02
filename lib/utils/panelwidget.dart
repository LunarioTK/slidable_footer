import 'package:flutter/material.dart';

class PanelWidget extends StatelessWidget {
  final ScrollController controller;
  const PanelWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: controller,
      padding: EdgeInsets.zero,
      children: <Widget>[
        const SizedBox(height: 36),
        buildAboutText(),
        const SizedBox(height: 24),
      ],
    );
  }

  Widget buildAboutText() => Container(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: const [
            Text(
              'About',
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 12),
            Text(
                """On the surface, Flutter is a reactive, pseudo-declarative UI framework, in which the developer provides a mapping from application state to interface state, and the framework takes on the task of updating the interface at runtime when the application state changes. This model is inspired by work that came from Facebook for their own React framework, which includes a rethinking of many traditional design principles.'
                
                
                In most traditional UI frameworks, the user interface’s initial state is described once and then separately updated by user code at runtime, in response to events. One challenge of this approach is that, as the application grows in complexity, the developer needs to be aware of how state changes cascade throughout the entire UI. For example, consider the following UI""")
          ],
        ),
      );
}
