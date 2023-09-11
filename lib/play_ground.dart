import 'package:alpha_customer/app/managers/colors.dart';
import 'package:alpha_customer/presentation/widgets/scaffold.dart';
import 'package:alpha_customer/presentation/widgets/text.dart';
import 'package:flutter/material.dart';

class PlayGround extends StatefulWidget {
  const PlayGround({Key? key}) : super(key: key);

  @override
  State<PlayGround> createState() => _PlayGroundState();
}

class _PlayGroundState extends State<PlayGround>
    with SingleTickerProviderStateMixin {
  _PlayGroundState();
  late final TabController _tabController;


  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);

    _tabController.addListener(() {
      setState(() {
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final tabs=[buildCollections(),buildLoans(),buildInvestments()];
    return buildScaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildLabelText("Packages"),
          const SizedBox(height: 16),
          TabBar(
            controller: _tabController,
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
          ),
          const SizedBox(height: 16),
          tabs[_tabController.index]

        ],
      ),
    );
  }


  Widget buildLoans() {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
        itemBuilder: (context, index) => buildPackagesCard(
            type: PackageType.loan,
            title: "PaxAlpha100000Naira ",
            amount: "₦100,0000",
            dataOne: "₦110,000",
            dataTwo: "15%",
            dataThree: "6 months"),
        separatorBuilder: (context, index) => const SizedBox(
              height: 16,
            ),
        itemCount: 10);
  }

  Widget buildCollections() {
    return ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
        itemBuilder: (context, index) => buildPackagesCard(
            type: PackageType.collection,
            title: "Pax200Naira",
            subtitle: "A flexible collection of 200 naira daily",
            amount: "₦200",
            dataOne: "Daily",
            dataTwo: "First savings",
            dataThree: "6 months"),
        separatorBuilder: (context, index) => const SizedBox(
              height: 16,
            ),
        itemCount: 10);
  }

  Widget buildInvestments() {
    return ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
        itemBuilder: (context, index) => buildPackagesCard(
            type: PackageType.investment,
            title: "PaxInv200thNaira  ",
            subtitle: "An investment with a target in mind",
            amount: "₦200,000",
            dataOne: "10%",
            dataTwo: "Target savings",
            dataThree: "6 months"),
        separatorBuilder: (context, index) => const SizedBox(
              height: 16,
            ),
        itemCount: 10);
  }

  Widget buildTab({required String text, required int index}) {
    return Opacity(
      opacity: _tabController.index == index ? 1 : 0.5,
      child: Container(
        margin: const EdgeInsets.only(right: 8),
        padding: const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
            color: _tabController.index == index
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

Widget buildPackagesCard(
    {required PackageType type,
    required String title,
    String? subtitle,
    required String amount,
    required String dataOne,
    required String dataTwo,
    required String dataThree}) {
  return Builder(builder: (context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(
              width: 0.25,
              color: type == PackageType.loan
                  ? const Color(0xFF78C499)
                  : type == PackageType.investment
                      ? const Color(0xFFA6A4FF)
                      : const Color(0xFFFFAFD6)),
          borderRadius: BorderRadius.circular(5),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x0C000000),
            blurRadius: 10,
            offset: Offset(1, 4),
            spreadRadius: 5,
          )
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: ColorManager.primaryColor)),
                    Text(subtitle ?? "",
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: ColorManager.alternateColor1, fontSize: 10))
                  ],
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      type == PackageType.loan
                          ? "Loan amount"
                          : type == PackageType.investment
                              ? "Target amount"
                              : "Package amount",
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: ColorManager.alternateColor1, fontSize: 10)),
                  Text("₦200",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(color: ColorManager.primaryColor))
                ],
              )
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildTile(
                  type == PackageType.loan
                      ? "Repayment amount"
                      : type == PackageType.investment
                          ? "Percentage interest"
                          : "Collection type",
                  dataOne),
              buildTile(
                  type == PackageType.loan
                      ? "Interest"
                      : type == PackageType.investment
                          ? "Investment type"
                          : "Seed payment",
                  dataTwo),
              buildTile(
                  type == PackageType.loan
                      ? "Return period"
                      : type == PackageType.investment
                          ? "Investment period"
                          : "Collection period",
                  dataThree)
            ],
          )
        ],
      ),
    );
  });
}

Widget buildTile(String one, String two) {
  return Builder(builder: (context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(one,
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(fontSize: 10, color: ColorManager.alternateColor1)),
        Text(two, style: Theme.of(context).textTheme.bodySmall)
      ],
    );
  });
}

enum PackageType { collection, loan, investment }
