import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
      ),
      itemCount: 10,
      itemBuilder: (context, index) => Padding(
        padding: EdgeInsets.all(4),
        child: Container(
          color: Colors.amberAccent,
        ),
      ),
    );
  }
}
