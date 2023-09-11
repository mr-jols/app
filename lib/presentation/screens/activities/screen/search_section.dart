import 'package:alpha_customer/app/managers/colors.dart';
import 'package:flutter/material.dart';

class BuildActivitiesSearchSection extends StatelessWidget {
  const BuildActivitiesSearchSection({Key? key, required this.searchController})
      : super(key: key);
  final TextEditingController searchController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: searchController,
      style: Theme.of(context).textTheme.bodySmall,
      decoration: InputDecoration(
          hintText: "Search",
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
          enabledBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(5)),
              borderSide: BorderSide(color: ColorManager.alternateColor1)),
          focusedBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(5)),
              borderSide: BorderSide(color: ColorManager.alternateColor1)),
          fillColor: ColorManager.onPrimaryColor,
          suffixIcon:
              Icon(Icons.search_rounded, color: ColorManager.primaryColor)),
    );
  }
}
