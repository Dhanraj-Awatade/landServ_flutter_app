import 'package:flutter/material.dart';
import 'package:mahareal_flutter_app/configs/constants.dart';

class ServicesList extends StatelessWidget {
   const ServicesList({
    super.key,
    required this.categoryIndex
  });

   final int categoryIndex;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: homePageCategoryLists[categoryIndex].length,

      itemBuilder: (BuildContext context, int index) {
        return Container(
          // padding: EdgeInsets.all(14),
          margin: EdgeInsets.all(10),
          height: 60,
          decoration: BoxDecoration(
            // color: Colors.amberAccent,
            border: Border.all(),
              borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.all(12),
                child: Text(
                  homePageCategoryLists[categoryIndex][index],
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
