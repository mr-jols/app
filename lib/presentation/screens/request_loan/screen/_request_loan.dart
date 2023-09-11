import 'package:alpha_customer/app/managers/colors.dart';
import 'package:alpha_customer/presentation/widgets/button.dart';
import 'package:alpha_customer/presentation/widgets/container.dart';
import 'package:alpha_customer/presentation/widgets/input_field.dart';
import 'package:alpha_customer/presentation/widgets/scaffold.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BuildRequestLoanScreen extends StatefulWidget {
  const BuildRequestLoanScreen({Key? key}) : super(key: key);

  @override
  State<BuildRequestLoanScreen> createState() => _BuildRequestLoanScreenState();
}

class _BuildRequestLoanScreenState extends State<BuildRequestLoanScreen> {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(
        title: "Request loan",
        withDrawer: false,
        body: buildSectionContainer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildInputField(
                  labelText: "Package Name",
                  hintText: "Select Package",
                  isSelectField: true),
              buildInputField(labelText: "Package Amount"),
              buildInputField(labelText: "Repayment Amount"),
              buildInputField(labelText: "Loan Period"),
              buildImageUploadButton(),
              const SizedBox(
                height: 50,
              ),
              buildSubmitButton(title: "Request")
            ],
          ),
        ));
  }

  Widget buildImageUploadButton() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Application from"),
        const SizedBox(
          height: 10,
        ),
        DottedBorder(
            color: ColorManager.alternateColor3,
            radius: const Radius.circular(5),
            dashPattern: const [4, 4],
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 14),
              color: ColorManager.alternateColor2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.add_a_photo, color: ColorManager.alternateColor1),
                  const SizedBox(
                    width: 8,
                  ),
                  Text("Upload form",
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(color: ColorManager.alternateColor1))
                ],
              ),
            )),
      ],
    );
  }
}
