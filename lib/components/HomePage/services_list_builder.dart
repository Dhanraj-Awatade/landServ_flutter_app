import 'package:flutter/material.dart';
import 'package:mahareal_flutter_app/configs/constants/colors.dart';
import 'package:mahareal_flutter_app/configs/constants/enums.dart';
import 'package:mahareal_flutter_app/configs/constants/service_list.dart';
import 'package:mahareal_flutter_app/configs/constants/sizes.dart';

class ServicesListBuilder extends StatelessWidget {
  const ServicesListBuilder({super.key, required this.category});

  final HomePageCategory category;

  @override
  Widget build(BuildContext context) {
    Iterable<ServiceFormConfig> serviceList = category == HomePageCategory.all
        ? services
        : services.where((x) => x.categoryName == category);
    return ListView.builder(
      // itemCount: MyLists.homePageCategoryLists[categoryIndex].length,
      itemCount: serviceList.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: CustomSizes.listPadding,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                iconAlignment: IconAlignment.start,
                alignment: Alignment.centerLeft,
                backgroundColor: MyColors.lightContainer,
                elevation: CustomSizes.buttonElevation,
                shadowColor: MyColors.tertiary,
                overlayColor: MyColors.secondary,
                splashFactory: InkRipple.splashFactory,
                side: BorderSide(color: MyColors.mutedGrey)),
            onPressed: () => {
              // Navigator.pushNamed(context, '/service',
              //     arguments: {"title": MyLists.homePageCategoryLists[categoryIndex][index]})
              Navigator.pushNamed(context, '/service', arguments: {
                "title": serviceList.elementAt(index).serviceName
              })
            },
            child: Padding(
              padding: CustomSizes.safetyPadding,
              child: Text(
                // MyLists.homePageCategoryLists[categoryIndex][index],
                serviceList.elementAt(index).serviceName,
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
