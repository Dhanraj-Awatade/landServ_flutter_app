import 'package:flutter/material.dart';
import 'package:mahareal_flutter_app/configs/constants/colors.dart';
import 'package:mahareal_flutter_app/configs/constants/lists.dart';
import 'package:mahareal_flutter_app/configs/constants/sizes.dart';

class ServicesList extends StatelessWidget {
  const ServicesList({super.key, required this.categoryIndex});

  final int categoryIndex;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: MyLists.homePageCategoryLists[categoryIndex].length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: CustomSizes.listPadding,
          child: ElevatedButton(
            style: ButtonStyle(
              iconAlignment: IconAlignment.start,
              alignment: Alignment.centerLeft,
              backgroundColor: WidgetStatePropertyAll(MyColors.lightContainer),
              elevation: WidgetStatePropertyAll(CustomSizes.buttonElevation),
              shadowColor: WidgetStatePropertyAll(MyColors.tertiary),
              overlayColor: WidgetStatePropertyAll(MyColors.secondary),
              splashFactory: InkRipple.splashFactory,
            ),
            onPressed: () => {
              // ScaffoldMessenger.of(context).showSnackBar(mySnackBar(
              // 'Navigating to ${MyLists.homePageCategoryLists[categoryIndex][index]}')),
              Navigator.pushNamed(context, '/service', arguments: {
                "title": MyLists.homePageCategoryLists[categoryIndex][index]
              })
            },
            child: Padding(
              padding: CustomSizes.safetyPadding,
              child: Text(
                MyLists.homePageCategoryLists[categoryIndex][index],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: MyColors.textDark,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
