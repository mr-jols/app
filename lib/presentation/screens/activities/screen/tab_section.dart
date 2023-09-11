import 'package:alpha_customer/app/managers/colors.dart';
import 'package:flutter/material.dart';

class BuildActivitiesTabSection extends StatelessWidget {
  const BuildActivitiesTabSection({
    Key? key,
    required this.tabController
  }) : super(key: key);
  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: tabController,
      isScrollable: true,
      padding: EdgeInsets.zero,
      indicatorPadding: EdgeInsets.zero,
      labelPadding: EdgeInsets.zero,
      indicatorWeight: 4,
      indicatorSize: TabBarIndicatorSize.label,
      indicator: const BoxDecoration(),
      labelColor: Colors.white,
      unselectedLabelColor: ColorManager.alternateColor,
      unselectedLabelStyle: Theme.of(context).textTheme.bodySmall,
      labelStyle: Theme.of(context).textTheme.bodySmall,
      tabs: [
        buildTab(text: 'All', index: 0),
        buildTab(text: 'Collection', index: 1),
        buildTab(text: 'Applications', index: 2),
        buildTab(text: 'Withdrawals', index: 3)
      ],
    );
  }

  Widget buildTab({required String text, required int index}) {
    return Opacity(
      opacity: tabController.index == index ? 1 : 0.5,
      child: Container(
        margin: const EdgeInsets.only(right: 8),
        padding: const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
            color:
                tabController.index == index ? ColorManager.primaryColor : null,
            border: Border.all(color: ColorManager.alternateColor, width: 1),
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        child: Tab(text: text,height: 35,),
      ),
    );
  }
}
