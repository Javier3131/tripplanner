import 'package:flutter/material.dart';
import 'package:tripplanner/widgets/custom_bottom_navigation_bar.dart';

class PastTripsScreen extends StatelessWidget {
  static const routeName = '/past-trips';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Past Trips'),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
