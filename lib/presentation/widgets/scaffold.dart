import 'package:alpha_customer/app/managers/colors.dart';
import 'package:alpha_customer/presentation/screens/drawer/screen/drawer.dart';
import 'package:flutter/material.dart';

Widget buildScaffold({Widget? body, String? title, bool? withDrawer = true}) {
  return Builder(builder: (context) {
    return Scaffold(
      appBar: AppBar(
          title: title == null
              ? null
              : Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(color: ColorManager.onPrimaryColor),
                ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: IconButton(
                icon: const Icon(Icons.notification_add_outlined),
                color: Colors.white,
                iconSize: 24,
                onPressed: () {},
              ),
            ),
          ]),
      drawer: withDrawer == false ? null : const BuildDrawer(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
              color: Colors.transparent,
              padding: const EdgeInsets.only(left: 16, right: 16, top: 24),
              child: body),
        ),
      ),
    );
  });
}
