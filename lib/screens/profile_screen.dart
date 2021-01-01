import 'package:flutter/material.dart';
import 'package:tripplanner/widgets/custom_bottom_navigation_bar.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = '/profile';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Profile'),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
