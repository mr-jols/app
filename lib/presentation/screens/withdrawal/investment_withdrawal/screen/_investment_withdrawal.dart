import 'package:alpha_customer/app/managers/colors.dart';
import 'package:alpha_customer/presentation/widgets/button.dart';
import 'package:alpha_customer/presentation/widgets/card.dart';
import 'package:alpha_customer/presentation/widgets/container.dart';
import 'package:alpha_customer/presentation/widgets/input_field.dart';
import 'package:alpha_customer/presentation/widgets/scaffold.dart';
import 'package:alpha_customer/presentation/widgets/text.dart';
import 'package:flutter/material.dart';

class BuildInvestmentWithdrawalScreen extends StatelessWidget {
  const BuildInvestmentWithdrawalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buildScaffold(
        withDrawer: false,
        title: "Investment withdrawal Request",
        body: Column(
          children: [
            buildTwoItemBalanceCard(
                titleOne: "Investment balance",
                balanceOne: "₦2,000,000",
                titleTwo: "Date",
                balanceTwo: "27th Dec 2023",
                color: ColorManager.secondaryColor2,
                textColor: ColorManager.alternateColor4),
            buildSectionContainer(
              child: buildFormInstructionText(
                  text:
                      "Kindly fill the details below to request investment withdrawal to your E-wallet"),
            ),
            buildSectionContainer(
              child: Column(
                children: [
                  buildInputField(
                      labelText: "Withdrawal type",
                      hintText: "Select Withdrawal type",
                      isSelectField: true),
                  buildInputField(
                      labelText: "Amount to withdraw",
                      hintText: "Enter an amount",
                      textInputType: TextInputType.number),
                  buildInputField(
                      labelText: "Description (Optional)",
                      hintText: "Type description"),
                ],
              ),
            ),
            Container(
                child: buildInfoCard(
                    textOne:
                        "Kindly note that this request will take from few minutes to some hours depending on the company, before it reflect in your wallet.",
                    textTwo:
                        "Kindly contact the company customer service with call or whatsapp to make it faster")),
            const SizedBox(
              height: 50,
            ),
            buildSubmitButton(title: "Request withdrawal")
          ],
        ));
  }
}
