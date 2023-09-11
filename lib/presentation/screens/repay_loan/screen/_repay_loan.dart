import 'package:alpha_customer/app/managers/colors.dart';
import 'package:alpha_customer/presentation/widgets/button.dart';
import 'package:alpha_customer/presentation/widgets/card.dart';
import 'package:alpha_customer/presentation/widgets/container.dart';
import 'package:alpha_customer/presentation/widgets/input_field.dart';
import 'package:alpha_customer/presentation/widgets/scaffold.dart';
import 'package:flutter/material.dart';

class BuildLoanRepaymentScreen extends StatelessWidget {
  const BuildLoanRepaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buildScaffold(
        title: "Repay loan",
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
                      "You can repay your loan anytime from your e-wallet balance",
                  textTwo: "Kindly fill in the amount below"),
            ),
            buildSectionContainer(
                child: buildLoanDetailsCard(
                    loanAmount: "₦2,000,000",
                    amountLeftToPay: "₦2,000,000",
                    dueDate: "18th Dec, 2023")),
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
                buildSubmitButton(title: "Repay loan")
              ],
            ))
          ],
        ));
  }

  Widget buildLoanDetailsCard(
      {required String loanAmount,
      required String amountLeftToPay,
      required String dueDate}) {
    return Container(
      padding: const EdgeInsets.only(top: 10, left: 16, bottom: 14, right: 16),
      width: double.infinity,
      decoration: ShapeDecoration(
        color: ColorManager.secondaryColor1,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildTile(title: "Loan Amount", content: loanAmount),
              buildTile(title: "Amount left to pay", content: amountLeftToPay)
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          buildTile(title: "Due date", content: dueDate)
        ],
      ),
    );
  }

  Widget buildTile({required String title, required String content}) {
    return Builder(builder: (context) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style:
                  Theme.of(context).textTheme.bodySmall?.copyWith(height: 2)),
          Text(content,
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(fontWeight: FontWeight.w700, height: 1.5))
        ],
      );
    });
  }
}
