import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:mahareal_flutter_app/components/homepage_categories.dart';
import 'package:mahareal_flutter_app/components/navbar.dart';
import 'package:mahareal_flutter_app/configs/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentSelectedSectionIndex = 0;

  Future<void> _selectSection(int index) async {
    setState(() {
      _currentSelectedSectionIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      bottomNavigationBar: myNavBar(),
      body: SafeArea(
        child: Column(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(18),
                  child: SizedBox(
                    width: double.infinity,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text.rich(
                                  const TextSpan(
                                    children: [
                                      TextSpan(
                                          text: "MAHAREAL",
                                          style:
                                              TextStyle(color: Colors.white)),
                                    ],
                                  ),
                                  style: TextStyle(
                                    shadows: [
                                      Shadow(
                                          offset: Offset.fromDirection(3.0, 2))
                                    ],
                                    fontFamily: "Rose",
                                    fontSize: 25,
                                    fontWeight: FontWeight.w700,
                                    wordSpacing: 20,
                                  ),
                                ),
                                const Text(
                                  "One solution for all of your Land Requirements!",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            FloatingActionButton(
                              onPressed: () =>
                                  {Navigator.pushNamed(context, '/profile')},
                              tooltip: "Profile",
                              shape: const CircleBorder(
                                side: BorderSide(
                                  width: 2,
                                  color: Colors.white54,
                                ),
                              ),
                              child: const Icon(Icons.account_circle_rounded),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        const TextField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(LucideIcons.search),
                              contentPadding: EdgeInsets.all(15),
                              label: Text(
                                "Search for a specific service here!",
                                style: TextStyle(fontSize: 13),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                                borderSide: BorderSide.none,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(25),
                                ),
                              ),
                              fillColor: Colors.white54,
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
                  color: Colors.white,
                ),
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: allServicesList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
