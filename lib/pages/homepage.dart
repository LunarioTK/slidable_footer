import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:footer_page/utils/panelwidget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final panelHeightClosed = MediaQuery.of(context).size.height * 0.1;
    final panelHeightOpen = MediaQuery.of(context).size.height * 0.7;

    return Scaffold(
      body: SlidingUpPanel(
        minHeight: panelHeightClosed,
        maxHeight: panelHeightOpen,
        panelBuilder: (controller) => PanelWidget(
          controller: controller,
        ),
      ),
    );
  }
}
