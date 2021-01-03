import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/custom_bottom_navigation_bar_model.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  void _onItemTapped(BuildContext ctx, int selectedPage) {
    print('selectedPage' + selectedPage.toString());
    final barData =
        Provider.of<CustomBottomNavigationBarModel>(ctx, listen: false);
    barData.setSelectedIndex(selectedPage);
    // BarItem barItem =
    //     barData.barItems.firstWhere((i) => i.index == selectedPage);
    // Navigator.of(ctx).pushReplacementNamed(barItem.route);
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today),
          label: 'Past Trips',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
      // items: _items,
      currentIndex:
          Provider.of<CustomBottomNavigationBarModel>(context).getCurrentIndex,
      selectedItemColor: Colors.teal,
      onTap: (int selectedPage) {
        _onItemTapped(context, selectedPage);
      },
    );
  }
}
