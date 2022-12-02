import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:footer_page/utils/panelwidget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final panelController = PanelController();

  @override
  Widget build(BuildContext context) {
    final panelHeightClosed = MediaQuery.of(context).size.height * 0.4;
    final panelHeightOpen = MediaQuery.of(context).size.height * 0.7;

    return Scaffold(
      body: SlidingUpPanel(
        controller: panelController,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
        minHeight: panelHeightClosed,
        maxHeight: panelHeightOpen,
        panelBuilder: (controller) => PanelWidget(
          panelController: panelController,
          controller: controller,
        ),
      ),
    );
  }
}
