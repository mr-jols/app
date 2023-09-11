import 'package:alpha_customer/app/managers/colors.dart';
import 'package:alpha_customer/presentation/widgets/button.dart';
import 'package:alpha_customer/presentation/widgets/text.dart';
import 'package:flutter/material.dart';

class BuildWalletCreditCardsSection extends StatelessWidget {
  const BuildWalletCreditCardsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buildLabelText("My cards"),
            buildAddMoreButton()
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        SizedBox(
          height: 150,
          child: ListView(shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: [
              buildCreditCard(name: "Oludare Bolarinwa", accountNumber: "8 7 6 5",
                  cardType: "VISA", date: "10/23"),
              const SizedBox(width: 20,),
              buildCreditCard(name: "Oludare Bolarinwa", accountNumber: "8 7 6 5",
                  cardType: "VISA", date: "10/23")
            ],),
        )

      ],
    );
  }
}

Widget buildCreditCard(
    {required String name,
      required String accountNumber,
      required String cardType,
      required String date}) {
  return Builder(builder: (context) {
    return Stack(
      children: [
        Container(
          width: 245,
          height: 146,
          decoration: ShapeDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                const Color(0xFFa5a3b9),
                ColorManager.onPrimaryColor,
                ColorManager.onPrimaryColor,
                const Color(0xFFfbd6a2)
              ],
              stops: const [0, 0.3, 0.7, 1],
            ),
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                width: 0.50,
                strokeAlign: BorderSide.strokeAlignCenter,
                color: Color(0xFFDDDDDD),
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            shadows: const [
              BoxShadow(
                color: Color(0x19000000),
                blurRadius: 10,
                offset: Offset(0, 4),
                spreadRadius: -1,
              )
            ],
          ),
        ),
        Positioned(
            top: 16,
            left: 8,
            child: Text(
              name,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(fontWeight: FontWeight.w600),
            )),
        Positioned(
            bottom: 16,
            left: 8,
            child: Text(
              cardType.toUpperCase(),
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(fontSize: 24, color: ColorManager.onPrimaryColor,fontWeight: FontWeight.w600),
            )),
        Positioned(
            bottom: 16,
            right: 8,
            child: Text(
              date,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w600),
            )),
        Positioned(
          top: 65,
          child: SizedBox(
            width: 245,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Text("* * * *"),
                  const Text("* * * *"),
                  const Text("* * * *"),
                  Text(accountNumber,style: Theme.of(context).textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w600),)
                ],
              ),
            ),
          ),
        )
      ],
    );
  });
}
