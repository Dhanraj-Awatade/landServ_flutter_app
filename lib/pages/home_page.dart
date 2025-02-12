import 'dart:async';

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:mahareal_flutter_app/components/HomePage/homepage_categories.dart';
import 'package:mahareal_flutter_app/components/HomePage/services_list.dart';
import 'package:mahareal_flutter_app/components/text_widgets.dart';
import 'package:mahareal_flutter_app/configs/constants/colors.dart';
import 'package:mahareal_flutter_app/configs/constants/sizes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentSelectedSectionIndex = 0;
  bool isUserNameDisplayed = false;

  Future<void> _selectSection(int index) async {
    setState(() {
      _currentSelectedSectionIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Column(
            children: [
              Padding(
                padding: CustomSizes.safetyPadding,
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          ConstantTextWidgets.titleTextWidget,
                          FloatingActionButton(
                            onPressed: () =>
                                {Navigator.pushNamed(context, '/profile')},
                            tooltip: "Profile",
                            shape: const CircleBorder(
                              side: BorderSide(
                                width: CustomSizes.defaultBorderWidth,
                                color: MyColors.secondary,
                              ),
                            ),
                            backgroundColor: MyColors.lightTransluscent,
                            child: const Icon(Iconsax.user),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: CustomSizes.defaultSpace,
                      ),
                      const TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(LucideIcons.search),
                            contentPadding: CustomSizes.safetyPadding,
                            label: Text(
                              "Search for a specific service here!",
                              style: TextStyle(fontSize: CustomSizes.smallFont),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(CustomSizes.maxCircularRadius),
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                CustomSizes.maxCircularRadius,
                              ),
                              borderSide: BorderSide(width: CustomSizes.smallBorderWidth,color: MyColors.primary)
                            ),
                            fillColor: MyColors.lightTransluscent,
                            filled: true,
                            floatingLabelBehavior:
                                FloatingLabelBehavior.never),
                      )
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  HomepageCategory(
                    // isSelected: true,
                    index: 0,
                    currentIndex: _currentSelectedSectionIndex,
                    setIndex: _selectSection,
                    title: "All Services",
                    imageAsset: 'assets/icons/all_services.png',
                  ),
                  HomepageCategory(
                    // isSelected: false,
                    index: 1,
                    currentIndex: _currentSelectedSectionIndex,
                    setIndex: _selectSection,
                    title: "Land Documents",
                    imageAsset: 'assets/icons/documents.png',
                  ),
                  HomepageCategory(
                    // isSelected: false,
                    index: 2,
                    currentIndex: _currentSelectedSectionIndex,
                    setIndex: _selectSection,
                    title: "Land Services",
                    imageAsset: 'assets/icons/services.png',
                  ),
                  HomepageCategory(
                    // isSelected: false,
                    index: 3,
                    currentIndex: _currentSelectedSectionIndex,
                    setIndex: _selectSection,
                    title: "Surveys",
                    imageAsset: 'assets/icons/survey.png',
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 25),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: MyColors.bgLight,
              ),
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0,8,0,0),
                child: ServicesList(categoryIndex: _currentSelectedSectionIndex,),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
