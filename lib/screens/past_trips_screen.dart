import 'package:flutter/material.dart';

class PastTripsScreen extends StatelessWidget {
  static const routeName = '/past-trips';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Text('Past Trips'),
      ),
    );
  }
}
