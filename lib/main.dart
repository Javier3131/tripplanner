import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tripplanner/providers/trips.dart';

import './screens/add_trip_screen.dart';
import './providers/custom_bottom_navigation_bar_model.dart';
import './screens/home_screen.dart';
import './screens/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (ctx) => CustomBottomNavigationBarModel()),
        ChangeNotifierProvider(create: (ctx) => Trips()),
      ],
      child: MaterialApp(
        title: 'Trip Planner',
        theme: ThemeData(
          primarySwatch: Colors.teal,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: '/',
        routes: {
          '/': (ctx) => LoginScreen(),
          HomeScreen.routeName: (ctx) => HomeScreen(),
          AddTripScreen.routeName: (ctx) => AddTripScreen(),
          // ProfileScreen.routeName: (ctx) => ProfileScreen(),
          // PastTripsScreen.routeName: (ctx) => PastTripsScreen(),
        },
      ),
    );
  }
}
