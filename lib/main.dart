import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tripplanner/screens/past_trips_screen.dart';
import 'package:tripplanner/screens/profile_screen.dart';

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
      ],
      child: MaterialApp(
        title: 'Trip Planner',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: '/',
        routes: {
          '/': (ctx) => LoginScreen(),
          HomeScreen.routeName: (ctx) => HomeScreen(),
          ProfileScreen.routeName: (ctx) => ProfileScreen(),
          PastTripsScreen.routeName: (ctx) => PastTripsScreen(),
        },
      ),
    );
  }
}
