import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Account Information'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Text("Name:"),
            ],
          ),
        ));
  }
}
