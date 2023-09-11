import 'package:alpha_customer/presentation/screens/home/screen/intro_section.dart';
import 'package:alpha_customer/presentation/screens/home/screen/quick_actions_section.dart';
import 'package:alpha_customer/presentation/screens/home/screen/utilities_section.dart';
import 'package:alpha_customer/presentation/widgets/container.dart';
import 'package:alpha_customer/presentation/widgets/scaffold.dart';
import 'package:flutter/material.dart';

class BuildHomeScreen extends StatelessWidget {
  const BuildHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buildScaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const BuildHomeIntroSection(),
        buildSectionContainer(child: const BuildHomeQuickActionsSection()),
        buildSectionFooterContainer(child: const BuildHomeUtilitiesSection())
      ],
    ));
  }
}
