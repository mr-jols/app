import 'package:alpha_customer/app/managers/colors.dart';
import 'package:alpha_customer/app/managers/images.dart';
import 'package:alpha_customer/presentation/screens/apply_investment/screen/_apply_investment.dart';
import 'package:alpha_customer/presentation/screens/pay_collection/screen/_pay_collection.dart';
import 'package:alpha_customer/presentation/screens/pay_investment/screen/_pay_investment.dart';
import 'package:alpha_customer/presentation/screens/repay_loan/screen/_repay_loan.dart';
import 'package:alpha_customer/presentation/screens/request_account_statement/screen/_request_account_statement.dart';
import 'package:alpha_customer/presentation/screens/request_loan/screen/_request_loan.dart';
import 'package:alpha_customer/presentation/screens/withdrawal_dialog/screen/_withdrawal_dialog.dart';
import 'package:alpha_customer/presentation/widgets/bottom_sheet.dart';
import 'package:alpha_customer/presentation/widgets/text.dart';
import 'package:flutter/material.dart';

class BuildHomeQuickActionsSection extends StatelessWidget {
  const BuildHomeQuickActionsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildLabelText("Quick Actions"),
        const SizedBox(
          height: 16,
        ),
        GridView.count(
          shrinkWrap: true,
          crossAxisSpacing: 6,
          mainAxisSpacing: 6,
          crossAxisCount: 4,
          childAspectRatio: 3 / 4,
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            buildQuickActionCard(
                iconPath: HomeScreenImageManager.moneyIcon,
                text: "Request Loan",
                navigateTo: const BuildRequestLoanScreen()),
            buildQuickActionCard(
                iconPath: HomeScreenImageManager.inIcon, text: "Withdraw",
              onPressed: ()=>triggerBottomSheet(context, child:const BuildWithdrawalDialog())
            ),
            buildQuickActionCard(
                iconPath: HomeScreenImageManager.barChartIcon,
                text: "Apply for investment",
                navigateTo: const BuildInvestmentApplicationScreen()),
            buildQuickActionCard(
                iconPath: HomeScreenImageManager.deskIcon,
                text: "Request statement of account",
                navigateTo: const BuildRequestAccountStatementScreen()),
            buildQuickActionCard(
                iconPath: HomeScreenImageManager.cardDeliveryIcon,
                text: "Pay collection",
                navigateTo: const BuildCollectionPaymentScreen()),
            buildQuickActionCard(
                iconPath: HomeScreenImageManager.verticalSwitchIcon,
                text: "Repay    loan",
                navigateTo: const BuildLoanRepaymentScreen()),
            buildQuickActionCard(
                iconPath: HomeScreenImageManager.chartPinIcon,
                text: "Pay investment",
                navigateTo: const BuildInvestmentPaymentScreen()),
          ],
        ),
      ],
    );
  }

  Widget buildQuickActionCard(
      {required String iconPath, required String text, Widget? navigateTo,VoidCallback ?onPressed}) {
    return Builder(builder: (context) {
      return InkWell(
        onTap: () {
          if(onPressed != null){
            onPressed();
          }
          if(navigateTo != null) {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => navigateTo));
          }
        },
        child: Container(
          padding: const EdgeInsets.only(top: 8, right: 8, left: 8),
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: ColorManager.secondaryColor3),
            borderRadius: const BorderRadius.all(Radius.circular(5)),
            // boxShadow: const [
            //   BoxShadow(
            //     color: Color(0x0C000000),
            //     blurRadius: 10,
            //     offset: Offset(1, 4),
            //     spreadRadius: 5,
            //   )
            // ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                iconPath,
                width: 24,
                height: 24,
              ),
              const SizedBox(
                height: 16,
              ),
              Text(text,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: ColorManager.alternateColor, fontSize: 11))
            ],
          ),
        ),
      );
    });
  }
}
