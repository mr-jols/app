import 'package:alpha_customer/app/managers/colors.dart';
import 'package:alpha_customer/presentation/widgets/container.dart';
import 'package:flutter/material.dart';

Widget buildInputField(
    {required String labelText,
    String? hintText,
    TextEditingController? controller,
    VoidCallback? onPressed,
    bool isSelectField = false,
    bool isDateField = false,
    bool isReadOnly = false,
    TextInputType textInputType = TextInputType.text}) {
  assert((isSelectField && isDateField) != true);
  return Stack(
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(labelText),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            keyboardType: textInputType,
            readOnly: isSelectField || isDateField || isReadOnly,
            controller: controller,
            onTap: onPressed,
            decoration: InputDecoration(hintText: hintText ?? labelText),
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
      Positioned(
        bottom: 32,
        right: 16,
        child: isDateField
            ? Icon(Icons.calendar_month_outlined,
                color: ColorManager.alternateColor1)
            : isSelectField
                ? Icon(Icons.keyboard_arrow_down_outlined,
                    color: ColorManager.alternateColor1)
                : buildEmptyContainer,
      )
    ],
  );
}
