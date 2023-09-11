import 'package:alpha_customer/presentation/screens/packages/screen/tab_section.dart';
import 'package:alpha_customer/presentation/screens/packages/screen/tab_view_section.dart';
import 'package:alpha_customer/presentation/widgets/container.dart';
import 'package:alpha_customer/presentation/widgets/scaffold.dart';
import 'package:alpha_customer/presentation/widgets/text.dart';
import 'package:flutter/material.dart';

class BuildPackagesScreen extends StatefulWidget {
  const BuildPackagesScreen({Key? key}) : super(key: key);

  @override
  State<BuildPackagesScreen> createState() => _BuildPackagesScreenState();
}

class _BuildPackagesScreenState extends State<BuildPackagesScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return buildScaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildLabelText("Packages"),
          buildSectionContainer(
              child: BuildPackagesTabSection(
            tabController: _tabController,
          )),
          buildSectionFooterContainer(
              child: BuildPackagesTabViewSection(tabController: _tabController))
        ],
      ),
    );
  }
}
