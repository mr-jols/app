import 'package:flutter/material.dart';

Widget buildLabelText(String text) {
  return Builder(builder: (context) {
    return Text(text, style: Theme.of(context).textTheme.labelMedium?.copyWith(
      fontWeight: FontWeight.w600
    ));
  });
}

Widget buildFormInstructionText({required String text}){
  return Builder(
    builder: (context) {
      return ConstrainedBox(
        constraints: BoxConstraints.tightFor(
          width: MediaQuery.of(context).size.width*0.8
        ),
        child: Text(text,
            textAlign: TextAlign.center,
            style:Theme.of(context).textTheme.bodySmall),
      );
    }
  );
}