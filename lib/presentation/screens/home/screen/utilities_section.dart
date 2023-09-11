import 'package:alpha_customer/app/managers/colors.dart';
import 'package:alpha_customer/app/managers/images.dart';
import 'package:alpha_customer/presentation/widgets/text.dart';
import 'package:flutter/material.dart';

class BuildHomeUtilitiesSection extends StatelessWidget {
  const BuildHomeUtilitiesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildLabelText("Utilities"),
        const SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildUtilityItem(
                imagePath: HomeScreenImageManager.sendIcon, text: "Transfer funds"),
            buildUtilityItem(
                imagePath: HomeScreenImageManager.printIcon, text: "Bill payment"),
            buildUtilityItem(
                imagePath: HomeScreenImageManager.mobileIcon, text: "Data & Airtime"),
            buildUtilityItem(
                imagePath: HomeScreenImageManager.dashboard, text: "More")
          ],
        ),
      ],
    );
  }

  Widget buildUtilityItem({required String imagePath, required String text,
    VoidCallback ? onPressed}) {
    return Builder(builder: (context) {
      return SizedBox(
        width: 60,
        child: Column(
          children: [
            InkWell(
              onTap: onPressed,
              child: Container(
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
              ),
            ),
            const SizedBox(height: 4),
            Text(text,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodySmall)
          ],
        ),
      );
    });
  }

}
