import 'package:flutter/material.dart';

import '../screens/home_screen.dart';
import '../screens/past_trips_screen.dart';
import '../screens/profile_screen.dart';

class BarItem {
  String name;
  String route;
  int index;
  IconData icon;
  BarItem(this.name, this.route, this.index, this.icon);
}

class CustomBottomNavigationBarModel extends ChangeNotifier {
  int currentIndex;
  List<BarItem> _barItem = [
    BarItem('Home', HomeScreen.routeName, 0, Icons.home),
    BarItem('Past Trips', PastTripsScreen.routeName, 1, Icons.calendar_today),
    BarItem('Profile', ProfileScreen.routeName, 2, Icons.person),
  ];

  CustomBottomNavigationBarModel();

  int get getCurrentIndex {
    return currentIndex == null ? 0 : currentIndex;
  }

  List<BarItem> get barItems {
    return [..._barItem];
  }

  void setSelectedIndex(int selectedIndex) {
    currentIndex = selectedIndex;
    notifyListeners();
  }
}
