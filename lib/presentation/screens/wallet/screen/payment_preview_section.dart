import 'package:alpha_customer/app/managers/colors.dart';
import 'package:alpha_customer/app/managers/images.dart';
import 'package:alpha_customer/presentation/widgets/text.dart';
import 'package:flutter/material.dart';

class BuildWalletPaymentPreviewSection extends StatelessWidget {
  const BuildWalletPaymentPreviewSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buildLabelText("Recent payments"),
            TextButton(
                onPressed: () {},
                child: Text("See all",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: ColorManager.primaryColor,
                        fontWeight: FontWeight.w600)))
          ],
        ),
        buildPaymentPreviewCard(
            amountPayed: "₦20,000",
            paymentReceiver: "Shade bolarinwa",
            date: "",
            time: "")
      ],
    );
  }

  Widget buildPaymentPreviewCard(
      {required String amountPayed,
        required String paymentReceiver,
        required String date,
        required String time}) {
    return Builder(builder: (context) {
      return Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: ColorManager.primaryColor)),
                  child: Center(
                    child: Image.asset(
                      WalletScreenImageManager.printIcon,
                      width: 24,
                      height: 24,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Payment of $amountPayed",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Opacity(
                        opacity: 0.8,
                        child: Text(
                          "$amountPayed was sent to $paymentReceiver",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              right: 16,
              top: 16,
              child: Opacity(
                  opacity: 0.6,
                  child: Text(
                    "9/02/2022",
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(fontSize: 10),
                  ))),
          Positioned(
              right: 16,
              bottom: 16,
              child: Opacity(
                  opacity: 0.6,
                  child: Text(
                    "10:00 am",
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(fontSize: 10),
                  ))),
        ],
      );
    });
  }

}

