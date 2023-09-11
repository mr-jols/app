import 'package:alpha_customer/app/managers/colors.dart';
import 'package:alpha_customer/presentation/widgets/button.dart';
import 'package:alpha_customer/presentation/widgets/card.dart';
import 'package:alpha_customer/presentation/widgets/container.dart';
import 'package:alpha_customer/presentation/widgets/input_field.dart';
import 'package:alpha_customer/presentation/widgets/scaffold.dart';
import 'package:flutter/material.dart';

class BuildCollectionPaymentScreen extends StatelessWidget {
  const BuildCollectionPaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buildScaffold(
        title: "Pay Collection",
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
                      "You can pay for your collection from your e-wallet balance",
                  textTwo:
                      "Kindly select single for a day payment and bulk for multiple"),
            ),
            buildSectionContainer(
                child: Column(
              children: [
                buildInputField(
                    labelText: "Package Name",
                    hintText: "Select Package",
                    isSelectField: true),
                buildInputField(
                    labelText: "Collection Type",
                    hintText: "Select Collection type",
                    isSelectField: true),
                buildInputField(labelText: "Number of days"),
                buildInputField(labelText: "Package Amount"),
                const SizedBox(
                  height: 30,
                ),
                buildSubmitButton(title: "Pay Collection")
              ],
            ))
          ],
        ));
  }
}
