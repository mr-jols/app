import 'package:flutter/material.dart';

void triggerBottomSheet(BuildContext context, {required Widget child}) {
  showModalBottomSheet(
      context: context,
      builder: (context) => Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.5, child: child),
          ),
      useRootNavigator: true,
      isScrollControlled: true);
}
