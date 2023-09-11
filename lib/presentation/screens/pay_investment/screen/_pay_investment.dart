import 'package:alpha_customer/app/managers/colors.dart';
import 'package:alpha_customer/presentation/widgets/button.dart';
import 'package:alpha_customer/presentation/widgets/card.dart';
import 'package:alpha_customer/presentation/widgets/container.dart';
import 'package:alpha_customer/presentation/widgets/input_field.dart';
import 'package:alpha_customer/presentation/widgets/scaffold.dart';
import 'package:flutter/material.dart';

class BuildInvestmentPaymentScreen extends StatelessWidget {
  const BuildInvestmentPaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buildScaffold(
        title: "Pay investment",
        withDrawer: false,
        body: Column(
          children: [
            buildBalanceCard(
                title: "E-Wallet balance",
                color: ColorManager.primaryColor1,
                balance: "N2,000,000"),
            buildSectionContainer(
              child: buildInfoCard(
                  textOne:
                      "You can pay for your investment anytime from your e-wallet balance",
                  textTwo: "Kindly fill in the amount below"),
            ),
            buildSectionContainer(
              child: buildBalanceCard(
                  title: "Investment balance",
                  color: ColorManager.secondaryColor2,
                  balance: "N2,000,000",
                  textColor: ColorManager.alternateColor4),
            ),
            buildSectionContainer(
                child: Column(
              children: [
                buildInputField(
                    labelText: "Amount",
                    textInputType: TextInputType.number,
                    hintText: "Enter an amount"),
                const SizedBox(
                  height: 30,
                ),
                buildSubmitButton(title: "Pay investment")
              ],
            ))
          ],
        ));
  }
}
