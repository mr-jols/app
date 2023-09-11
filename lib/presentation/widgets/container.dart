import 'package:alpha_customer/app/managers/colors.dart';
import 'package:flutter/material.dart';

final buildEmptyContainer = Container();

Widget buildSectionContainer({required Widget child}) {
  return Container(padding: const EdgeInsets.only(top: 24), child: child);
}

Widget buildSectionFooterContainer({required Widget child}) {
  return Container(
      padding: const EdgeInsets.only(top: 24, bottom: 24), child: child);
}

Widget buildCircularImageContainer({required String imagePath}) {
  return Container(
    width: 40,
    height: 40,
    decoration: BoxDecoration(
      border: Border.all(color: ColorManager.primaryColor),
      shape: BoxShape.circle,
    ),
    child: Center(
        child: Image.asset(
      imagePath,
      width: 24,
      height: 24,
    )),
  );
}
