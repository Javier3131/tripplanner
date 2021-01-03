import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/custom_bottom_navigation_bar_model.dart';
import '../screens/add_trip_screen.dart';
import '../screens/past_trips_screen.dart';
import '../screens/profile_screen.dart';
import '../screens/trips_screen.dart';
import '../widgets/custom_bottom_navigation_bar.dart';
// import '../widgets/travel_card_widget.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget body = TripsScreen();
  String currentRouteName = TripsScreen.routeName;

  @override
  Widget build(BuildContext context) {
    body =
        Provider.of<CustomBottomNavigationBarModel>(context, listen: true).body;

    return Scaffold(
      body: body,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () {
          Navigator.of(context).pushNamed(AddTripScreen.routeName);
        },
        child: Icon(
          Icons.add,
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
