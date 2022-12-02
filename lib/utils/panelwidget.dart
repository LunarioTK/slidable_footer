import 'package:flutter/material.dart';
import 'package:footer_page/utils/skillsrow.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class PanelWidget extends StatelessWidget {
  final ScrollController controller;
  final PanelController panelController;
  const PanelWidget(
      {super.key, required this.controller, required this.panelController});

  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: controller,
      padding: EdgeInsets.zero,
      children: <Widget>[
        const SizedBox(height: 12),
        buildHandle(),
        const SizedBox(height: 18),
        buildAboutText(),
        const SizedBox(height: 24),
      ],
    );
  }

  //Traço antes do About
  Widget buildHandle() => GestureDetector(
        onTap: togglePanel,
        child: Center(
          child: Container(
            width: 40,
            height: 5,
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(12),
                )),
          ),
        ),
      );

  void togglePanel() => panelController.isPanelOpen
      ? panelController.close()
      : panelController.open();

  //Tudo dentro do panel
  Widget buildAboutText() => Container(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Excercises',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[900],
                    ),
                  ),
                  Text(
                    '..',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[900],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 15),
              Column(
                children: [
                  SkillBox(
                      icon: Icons.favorite,
                      iconColor: Colors.amber.shade900,
                      boxTitle: 'Speaking Skills',
                      execercisoNum: 16),
                ],
              )
            ],
          ),
        ),
      );
}
