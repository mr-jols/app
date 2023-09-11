import 'package:alpha_customer/app/managers/themes.dart';
import 'package:alpha_customer/presentation/screens/bottom_nav/screen/bottom_nav.dart';
import 'package:alpha_customer/presentation/screens/withdrawal/collection_withdrawal/screen/_collection_withdrawal.dart';
import 'package:alpha_customer/presentation/screens/withdrawal/investment_withdrawal/screen/_investment_withdrawal.dart';
import 'package:flutter/material.dart';

class AlphaApp extends StatelessWidget {
  const AlphaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeManager().themeData,
      home:const BuildBottomNav()
    );
  }
}
