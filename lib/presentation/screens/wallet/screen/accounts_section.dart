import 'package:alpha_customer/app/managers/colors.dart';
import 'package:alpha_customer/app/managers/images.dart';
import 'package:alpha_customer/presentation/widgets/button.dart';
import 'package:alpha_customer/presentation/widgets/text.dart';
import 'package:flutter/material.dart';

class BuildWalletAccountsSection extends StatelessWidget {
  const BuildWalletAccountsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [buildLabelText("My accounts"), buildAddMoreButton()],
        ),
        SizedBox(
          height: 110,
          child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, _) => Center(
                    child: buildAccountCard(
                        bankName: "GTbank",
                        accountNumber: "0113454345",
                        userName: "Shade Bolarinwa"),
                  ),
              separatorBuilder: (context, index) => const SizedBox(
                    width: 8,
                  ),
              itemCount: 3),
        ),
        const SizedBox(
          height: 8,
        ),
        buildManageButton(title: "Manage cards & banks"),
        const SizedBox(
          height: 10,
        ),
        buildManageButton(title: "Manage beneficiaries"),
      ],
    );
  }

  Widget buildAccountCard(
      {required String bankName,
      required String accountNumber,
      required String userName}) {
    return Builder(builder: (context) {
      return Container(
        width: 170,
        height: 80,
        padding: const EdgeInsets.all(12),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 0.50, color: Color(0xFFE4E1FF)),
            borderRadius: BorderRadius.circular(5),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x0C000000),
              blurRadius: 10,
              offset: Offset(1, 4),
              spreadRadius: 5,
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: ColorManager.primaryColor)),
              child: Center(
                child: Image.asset(
                  WalletScreenImageManager.buildingIcon,
                  width: 20,
                  height: 20,
                ),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(bankName,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: Colors.black)),
                const SizedBox(
                  height: 6,
                ),
                Text(accountNumber,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: ColorManager.alternateColor, fontSize: 10)),
                Text(userName,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(fontSize: 10))
              ],
            )
          ],
        ),
      );
    });
  }

  Widget buildManageButton({required String title, VoidCallback? onPressed}) {
    return Builder(builder: (context) {
      return MaterialButton(
        padding: EdgeInsets.zero,
        onPressed: onPressed,
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 0.50, color: Color(0x333A3A3A)),
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
              Icon(
                Icons.arrow_forward_ios_outlined,
                color: ColorManager.alternateColor,
                size: 16,
              )
            ],
          ),
        ),
      );
    });
  }
}
