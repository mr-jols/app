import 'package:alpha_customer/presentation/widgets/button.dart';
import 'package:alpha_customer/presentation/widgets/container.dart';
import 'package:alpha_customer/presentation/widgets/input_field.dart';
import 'package:alpha_customer/presentation/widgets/scaffold.dart';
import 'package:flutter/material.dart';

class BuildRequestAccountStatementScreen extends StatelessWidget {
  const BuildRequestAccountStatementScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buildScaffold(
        title: "Request Account Statement",
        withDrawer: false,
        body: buildSectionContainer(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildInputField(
                labelText: "Start period",
                hintText: "Select",
                isSelectField: true),
            buildInputField(labelText: "Start period", isDateField: true),
            buildInputField(labelText: "End period", isDateField: true),
            const SizedBox(
              height: 30,
            ),
            buildSubmitButton(title: "Request")
          ],
        )));
  }
}
