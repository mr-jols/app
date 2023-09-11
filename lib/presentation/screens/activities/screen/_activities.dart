import 'package:alpha_customer/presentation/screens/activities/screen/search_section.dart';
import 'package:alpha_customer/presentation/screens/activities/screen/tab_section.dart';
import 'package:alpha_customer/presentation/screens/activities/screen/tab_view_section.dart';
import 'package:alpha_customer/presentation/widgets/container.dart';
import 'package:alpha_customer/presentation/widgets/scaffold.dart';
import 'package:alpha_customer/presentation/widgets/text.dart';
import 'package:flutter/material.dart';

class BuildActivitiesScreen extends StatefulWidget {
  const BuildActivitiesScreen({Key? key}) : super(key: key);

  @override
  State<BuildActivitiesScreen> createState() => _BuildActivitiesScreenState();
}

class _BuildActivitiesScreenState extends State<BuildActivitiesScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _tabController.addListener(() {
      setState(() {
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return buildScaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildLabelText("Activities"),
        buildSectionContainer(
            child: BuildActivitiesSearchSection(
                searchController: _searchController)),
        buildSectionContainer(
            child: BuildActivitiesTabSection(tabController: _tabController)),
        buildSectionFooterContainer(
            child: BuildActivitiesTabViewSection(
                tabController: _tabController,
                searchController: _searchController))
      ],
    ));
  }
}
