import 'package:alpha_customer/app/managers/colors.dart';
import 'package:alpha_customer/app/managers/images.dart';
import 'package:alpha_customer/presentation/screens/withdrawal/collection_withdrawal/screen/_collection_withdrawal.dart';
import 'package:alpha_customer/presentation/screens/withdrawal/investment_withdrawal/screen/_investment_withdrawal.dart';
import 'package:alpha_customer/presentation/widgets/container.dart';
import 'package:flutter/material.dart';

class BuildWithdrawalDialog extends StatelessWidget {
  const BuildWithdrawalDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 16, right: 16, bottom: 8, top: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Select withdrawal type",
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium
                      ?.copyWith(color: ColorManager.onPrimaryColor),
                ),
                TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text(
                      "Cancel",
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: ColorManager.onPrimaryColor,
                          fontWeight: FontWeight.w500),
                    ))
              ],
            ),
          ),
          Container(
            color: ColorManager.onPrimaryColor,
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                buildWithdrawalCard(
                    title: "Request collection withdrawal",
                    content:
                        "request your collection funds to be transferred to your E-wallet",
                  navigateTo: const BuildCollectionWithdrawalScreen()
                ),
                buildWithdrawalCard(
                    title: "Request investment withdrawal",
                    content:
                        "request your investment funds to be transferred to your E-wallet",
                    navigateTo: const BuildInvestmentWithdrawalScreen()
                ),
                buildWithdrawalCard(
                    title: "Withdraw to bank",
                    content:
                        "Withdraw your funds from your wallet to your bank")
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildWithdrawalCard(
      {Widget ? navigateTo,
      required String title,
      required String content}) {
    return Builder(builder: (context) {
      return MaterialButton(
        onPressed: (){
          if(navigateTo != null) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => navigateTo));
          }
        },
        visualDensity: VisualDensity.compact,
        padding: EdgeInsets.zero,
        child: Container(
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.only(bottom: 16),
          decoration: ShapeDecoration(
            color: ColorManager.onPrimaryColor,
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 0.50, color: Color(0xFFEBEBEB)),
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                  alignment: Alignment.topRight,
                  child: buildCircularImageContainer(
                      imagePath: WalletScreenImageManager.buildingIcon)),
              const SizedBox(
                width: 8,
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: Theme.of(context).textTheme.labelMedium?.copyWith(
                    fontWeight: FontWeight.w600
                    )),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(content,
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.copyWith(color: ColorManager.alternateColor1))
                  ],
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              const Icon(
                Icons.arrow_forward_ios,
                size: 16,
              )
            ],
          ),
        ),
      );
    });
  }
}
