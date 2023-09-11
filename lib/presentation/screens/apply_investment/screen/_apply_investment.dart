import 'package:alpha_customer/presentation/widgets/button.dart';
import 'package:alpha_customer/presentation/widgets/container.dart';
import 'package:alpha_customer/presentation/widgets/input_field.dart';
import 'package:alpha_customer/presentation/widgets/scaffold.dart';
import 'package:flutter/material.dart';

class BuildInvestmentApplicationScreen extends StatelessWidget {
  const BuildInvestmentApplicationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buildScaffold(
        title: "Apply for investment",
        withDrawer: false,
        body: buildSectionContainer(
          child: Column(
            children: [
              buildInputField(
                  labelText: "Package Name", hintText: "Select Package",isSelectField: true),
              buildInputField(labelText: "Amount to pay", hintText:"Package Amount"),
              buildInputField(labelText: "Number of days"),
              const SizedBox(height: 30,),
              buildSubmitButton(title: "Apply")
            ],
          ),
        ));
  }
}
