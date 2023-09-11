import 'package:alpha_customer/app/managers/colors.dart';
import 'package:flutter/material.dart';

class BuildHomeIntroSection extends StatelessWidget {
  const BuildHomeIntroSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Hi, Oludare",
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.normal
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        buildEwalletBalanceCard(),
        const SizedBox(
          height: 6,
        ),
       GridView.count(
            shrinkWrap: true,
            crossAxisSpacing: 6,
            mainAxisSpacing: 6,
            crossAxisCount: 3,
            childAspectRatio: 5 / 4,
            padding:EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              buildBalanceCard(
                  title: "Collection balance",
                  value: "N340,000",
                  color: ColorManager.secondaryColor),
              buildBalanceCard(
                  title: "Loan \nbalance",
                  value: "N150,000",
                  color: ColorManager.secondaryColor1),
              buildBalanceCard(
                  title: "Investment balance",
                  value: "N200,000",
                  color: ColorManager.secondaryColor2),
            ],
        )
      ],
    );
  }

  Widget buildBalanceCard(
      {required String title, required String value, required Color color}) {
    return Builder(builder: (context) {
      return Container(
        padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
        decoration: ShapeDecoration(
          color: color,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            Text(
              value,
              style:
                  Theme.of(context).textTheme.titleSmall?.copyWith(height: 2,),
              softWrap: false,
            )
          ],
        ),
      );
    });
  }

  Widget buildEwalletBalanceCard() {
    return Builder(builder: (context) {
      return Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                width: double.infinity,
                decoration: ShapeDecoration(
                  color: ColorManager.primaryColor1,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text("E-Wallet balance",
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(
                                  color: ColorManager.onPrimaryColor,
                                  height: 2)),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text('₦2,000,000',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(
                                        color: ColorManager.onPrimaryColor,
                                        fontWeight: FontWeight.w700,
                                        height: 1.8)),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Positioned(
            bottom: 6,
            right: 10,
            child: MaterialButton(
              onPressed: () {},
              elevation: 2,
              color: ColorManager.primaryColor2,
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 0.50, color: Color(0x19F5F5F5)),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                ),
                child: Text("Top up    +",
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: ColorManager.onPrimaryColor)),
              ),
            ),
          )
        ],
      );
    });
  }
}
