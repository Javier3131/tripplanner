import 'package:flutter/material.dart';
import 'package:tripplanner/screens/trips_screen.dart';

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
    // BarItem('Home', HomeScreen.routeName, 0, Icons.home),
    BarItem('Trips Screen', TripsScreen.routeName, 0, Icons.calendar_today),
    BarItem('Past Trips', PastTripsScreen.routeName, 1, Icons.calendar_today),
    BarItem('Profile', ProfileScreen.routeName, 2, Icons.person),
  ];
  String _currentRouteName = TripsScreen.routeName;
  Widget _body = TripsScreen();

  CustomBottomNavigationBarModel();

  int get getCurrentIndex {
    return currentIndex == null ? 0 : currentIndex;
  }

  List<BarItem> get barItems {
    return [..._barItem];
  }

  String get currentRouteName {
    return _currentRouteName;
  }

  Widget get body {
    return _body;
  }

  void setSelectedIndex(int selectedIndex) {
    currentIndex = selectedIndex;
    switch (selectedIndex) {
      case 0:
        _currentRouteName = TripsScreen.routeName;
        _body = TripsScreen();
        break;
      case 1:
        _currentRouteName = PastTripsScreen.routeName;
        _body = PastTripsScreen();
        break;
      case 2:
        _currentRouteName = ProfileScreen.routeName;
        _body = ProfileScreen();
        break;
      default:
    }
    notifyListeners();
  }
}
