import 'package:alpha_customer/presentation/screens/wallet/screen/accounts_section.dart';
import 'package:alpha_customer/presentation/screens/wallet/screen/credit_cards_section.dart';
import 'package:alpha_customer/presentation/screens/wallet/screen/payment_preview_section.dart';
import 'package:alpha_customer/presentation/widgets/container.dart';
import 'package:alpha_customer/presentation/widgets/scaffold.dart';
import 'package:flutter/cupertino.dart';

class BuildWalletScreen extends StatelessWidget {
  const BuildWalletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buildScaffold(
        body: Column(
      children: [
        const BuildWalletCreditCardsSection(),
        buildSectionContainer(child: const BuildWalletAccountsSection()),
        buildSectionFooterContainer(
            child: const BuildWalletPaymentPreviewSection())
      ],
    ));
  }
}
