import 'package:alpha_customer/app/managers/colors.dart';
import 'package:flutter/material.dart';

class BuildPackagesTabSection extends StatelessWidget {
  const BuildPackagesTabSection({
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
      unselectedLabelStyle: Theme.of(context).textTheme.bodySmall,
      labelStyle: Theme.of(context).textTheme.bodySmall,
      indicator: const BoxDecoration(),
      labelColor: Colors.white,
      unselectedLabelColor: ColorManager.alternateColor,
      tabs: [
        buildTab(text: 'Collection', index: 0),
        buildTab(text: 'Loan', index: 1),
        buildTab(text: 'Investment', index: 2),
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
            color: tabController.index == index
                ? ColorManager.primaryColor
                : null,
            border: Border.all(color: ColorManager.alternateColor, width: 1),
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        child: Tab(
          text: text,
          height: 35,
        ),
      ),
    );
  }
}
