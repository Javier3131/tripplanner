import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = '/profile';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Text('Profile'),
      ),
    );
  }
}
