import 'package:flutter/material.dart';

class HomepageCategory extends StatelessWidget {
  final String imageAsset;
  final String title;
  // final bool isSelected=index==currentIndex ;
  final int index;
  final int currentIndex;
  final Function setIndex;

  const HomepageCategory({
    super.key,
    required this.imageAsset,
    required this.title,
    // required this.isSelected,
    required this.index,
    required this.currentIndex,
    required this.setIndex,
  });

  @override
  Widget build(BuildContext context) {
    bool isSelected = index == currentIndex;

    return GestureDetector(
      onTap: () => setIndex(index),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: isSelected ? Colors.white60 : Colors.white24,
              borderRadius: BorderRadius.circular(18),
            ),
            padding: const EdgeInsets.all(16),
            height: 60,
            width: 60,
            child: Image.asset(
              fit: BoxFit.contain,
              semanticLabel: title,
              imageAsset,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.white70,
              shadows: [Shadow(blurRadius: isSelected ? 5 : 0)],
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
