import 'package:alpha_customer/app/managers/colors.dart';
import 'package:alpha_customer/app/managers/images.dart';
import 'package:alpha_customer/presentation/widgets/container.dart';
import 'package:flutter/material.dart';

class BuildActivitiesTabViewSection extends StatelessWidget {
  const BuildActivitiesTabViewSection({Key? key,
    required this.tabController,
    required this.searchController
  }) : super(key: key);
  final TabController tabController;
  final TextEditingController searchController;

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        buildActivityCard(
            title: "Loan request",
            id: "TRNX11235ABDGS441UF4",
            status: ActivityStatus.processing,
            type: ActivityType.loan,
            amount: "₦100,000",
            repaymentAmount: "₦110,000",
            period: "6 months",
            time: "10:00 am",
            date: "9/02/2022"),
        const SizedBox(height: 16),
        buildActivityCard(
            title: "Investment Application",
            id: "TRNX11235ABDGS441UF4",
            status: ActivityStatus.accepted,
            type: ActivityType.investment,
            amount: "₦100,000",
            repaymentAmount: "₦110,000",
            period: "6 months",
            time: "10:00 am",
            date: "9/02/2022"),
        const SizedBox(height: 16),
        buildActivityCard(
            title: "Investment Application",
            id: "TRNX11235ABDGS441UF4",
            status: ActivityStatus.rejected,
            type: ActivityType.investment,
            amount: "₦100,000",
            repaymentAmount: "₦110,000",
            period: "6 months",
            time: "10:00 am",
            date: "9/02/2022"),
        const SizedBox(height: 16),
        buildActivityCard(
            title: "Withdrawal Application",
            id: "TRNX11235ABDGS441UF4",
            status: ActivityStatus.disbursed,
            type: ActivityType.withdrawal,
            amount: "₦100,000",
            repaymentAmount: "₦110,000",
            period: "6 months",
            time: "10:00 am",
            date: "9/02/2022"),
      ],
    );
  }

  Widget buildActivityCard(
      {required String title,
        required String id,
        required ActivityStatus status,
        required ActivityType type,
        required String amount,
        required String repaymentAmount,
        required String period,
        required String time,
        required String date}) {
    return Builder(builder: (context) {
      return Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: .25, color: Color(0xFFBFB8FF)),
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
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildCircularImageContainer(
                    imagePath: HomeScreenImageManager.moneyIcon),
                const SizedBox(
                  width: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: Theme.of(context).textTheme.bodyMedium),
                    Text(id,
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.copyWith(height: 2)),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildTile("Amount", "N100,000"),
                        const SizedBox(
                          width: 20,
                        ),
                        buildTile("Repayment", "N110,000"),
                        const SizedBox(
                          width: 20,
                        ),
                        buildTile("Period", "6 months"),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Text(time,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            fontSize: 10, color: ColorManager.alternateColor1))
                  ],
                )
              ],
            ),
          ),
          Positioned(
              top: 16,
              right: 16,
              child: Text(
                  status == ActivityStatus.accepted
                      ? "Accepted"
                      : status == ActivityStatus.disbursed
                      ? "Disbursed"
                      : status == ActivityStatus.processing
                      ? "Processing"
                      : "Rejected",
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      fontSize: 10,
                      color: status == ActivityStatus.accepted
                          ? ColorManager.accentColor
                          : status == ActivityStatus.processing
                          ? ColorManager.accentColor2
                          : status == ActivityStatus.disbursed
                          ? ColorManager.primaryColor
                          : Colors.red))),
          Positioned(
              right: 16,
              bottom: 16,
              child: Text(date,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(fontSize: 10)))
        ],
      );
    });
  }

  Widget buildTile(String one, String two) {
    return Builder(
      builder: (context) {
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
      }
    );
  }
}

enum ActivityType { loan, investment, withdrawal }

enum ActivityStatus { processing, accepted, rejected, disbursed }



