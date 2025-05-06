import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mahareal_flutter_app/components/HomePage/main_service_button.dart';
import 'package:mahareal_flutter_app/components/HomePage/profile_button.dart';
import 'package:mahareal_flutter_app/components/HomePage/search_bars.dart';
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
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: MyColors.primary,
        body: Column(
          children: [
            // SizedBox(
            //   height: 40,
            // ),
            Column(
              children: [
                Padding(
                  padding: CustomSizes.safetyPaddingWithAppBar,
                  child: SizedBox(
                    width: double.infinity,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [ConstantTextWidgets.titleTextWidget, profileButton(context)],
                        ),
                        const SizedBox(
                          height: CustomSizes.defaultSpace,
                        ),
                        SearchBars.homepageSearchBar(context),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MainServiceButton(
                      index: 0,
                      currentIndex: _currentSelectedSectionIndex,
                      setIndex: _selectSection,
                      title: "All",
                      imageAsset: 'assets/icons/all_services.png',
                    ),
                    MainServiceButton(
                      index: 1,
                      currentIndex: _currentSelectedSectionIndex,
                      setIndex: _selectSection,
                      title: "Documents",
                      imageAsset: 'assets/icons/documents.png',
                    ),
                    MainServiceButton(
                      index: 2,
                      currentIndex: _currentSelectedSectionIndex,
                      setIndex: _selectSection,
                      title: "Services",
                      imageAsset: 'assets/icons/services.png',
                    ),
                    MainServiceButton(
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
                child: ServicesList(
                  categoryIndex: _currentSelectedSectionIndex,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}