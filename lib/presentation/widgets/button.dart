import 'package:alpha_customer/app/managers/colors.dart';
import 'package:flutter/material.dart';

Widget buildAddMoreButton({VoidCallback? onPressed}) {
  return Builder(builder: (context) {
    return TextButton(
        onPressed: onPressed,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "ADD MORE ",
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: ColorManager.primaryColor,
                  fontWeight: FontWeight.w600),
            ),
            Icon(
              Icons.add,
              color: ColorManager.primaryColor,
              size: 20,
            )
          ],
        ));
  });
}

Widget buildSubmitButton(
    {required String title,
    bool isValid = false,
    bool isLoading = false,
    VoidCallback? onPressed}) {
  return Builder(builder: (context) {
    return MaterialButton(
      padding: EdgeInsets.zero,
      visualDensity: VisualDensity.compact,
      onPressed: () {
        if (isValid) {
          onPressed?.call();
        }
      },
      child: Opacity(
        opacity: isValid ? 1 : 0.5,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 16),
          width: double.infinity,
          decoration: ShapeDecoration(
            color: ColorManager.accentColor2,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            shadows: const [
              BoxShadow(
                color: Color(0x19000000),
                blurRadius: 10,
                offset: Offset(1, 4),
                spreadRadius: 5,
              )
            ],
          ),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: ColorManager.onPrimaryColor),
          ),
        ),
      ),
    );
  });
}
