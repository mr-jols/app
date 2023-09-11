import 'package:alpha_customer/app/managers/colors.dart';
import 'package:flutter/material.dart';

Widget buildBalanceCard({
  required String title,
  required String balance,
  required Color color,
  Color? textColor =Colors.white
}){
  return Builder(
      builder: (context) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding:
              const EdgeInsets.only(top: 10, left: 16,bottom:14),
              width: double.infinity,
              decoration: ShapeDecoration(
                color: color,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(
                          color: textColor,
                          height: 2)),
                  Text(balance,
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall
                          ?.copyWith(
                          color: textColor,
                          fontWeight: FontWeight.w700,
                          height: 1.5))
                ],
              ),
            )
          ],
        );
      }
  );
}


Widget buildTwoItemBalanceCard({
  required String titleOne,
  required String balanceOne,
  required String titleTwo,
  required String balanceTwo,
  required Color color,
  Color? textColor =Colors.white
}){
  return Builder(
      builder: (context) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding:
              const EdgeInsets.only(top: 10, left: 16,bottom:14,right: 16),
              width: double.infinity,
              decoration: ShapeDecoration(
                color: color,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(titleOne,
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(
                              color: textColor,
                              height: 2)),
                      Text(balanceOne,
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall
                              ?.copyWith(
                              color: textColor,
                              fontWeight: FontWeight.w700,
                              height: 1.5))
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(titleTwo,
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(
                              color: textColor,
                              height: 2)),
                      Text(balanceTwo,
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall
                              ?.copyWith(
                              color: textColor,
                              fontWeight: FontWeight.w700,
                              height: 1.5))
                    ],
                  ),
                ],
              ),
            )
          ],
        );
      }
  );
}





Widget buildInfoCard({required String textOne, required String textTwo}) {
  return Builder(builder: (context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: ShapeDecoration(
        color: ColorManager.alternateColor2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(
            Icons.info_outline,
            size: 24,
          ),
          const SizedBox(
            width: 8,
          ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(textOne, style: Theme.of(context).textTheme.bodySmall),
                const SizedBox(height: 12,),
                Text(textTwo, style: Theme.of(context).textTheme.bodySmall)
              ],
            ),
          )
        ],
      ),
    );
  });
}