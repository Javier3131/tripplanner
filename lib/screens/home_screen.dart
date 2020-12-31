import 'package:flutter/material.dart';
import 'package:tripplanner/widgets/travel_card_widget.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

class HomeScreen extends StatelessWidget {
  final iconList = <IconData>[
    Icons.brightness_5,
    Icons.brightness_4,
    Icons.brightness_6,
    Icons.brightness_7,
  ];

  static const routeName = '/home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text('My trips'),
                TravelCardWidget(
                  'https://travelcravingsdotcom1.files.wordpress.com/2018/04/1024px-plaza-libertad-san-salvador.png',
                  'Viaje Biometricos',
                  'El Salvador',
                  '6/01/2021',
                  '10/01/2021',
                ),
                TravelCardWidget(
                  'https://upload.wikimedia.org/wikipedia/commons/5/58/Westbay2106.jpg',
                  'Vacaciones a Roatan!',
                  'Honduras',
                  '02/02/2021',
                  '10/02/2021',
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () {},
        child: Icon(
          Icons.add,
        ),
      ),
      // bottomNavigationBar: AnimatedBottomNavigationBar.builder(
      //   itemCount: iconList.length,
      //   tabBuilder: null,
      //   // tabBuilder: (int index, bool isActive) {
      //   //   final color = isActive ? HexColor('#FFA400') : Colors.white;
      //   //   return Column(
      //   //     mainAxisSize: MainAxisSize.min,
      //   //     mainAxisAlignment: MainAxisAlignment.center,
      //   //     children: [
      //   //       Icon(
      //   //         iconList[index],
      //   //         size: 24,
      //   //         color: color,
      //   //       ),
      //   //       const SizedBox(height: 4),
      //   //       Padding(
      //   //         padding: const EdgeInsets.symmetric(horizontal: 8),
      //   //         child: AutoSizeText(
      //   //           "brightness $index",
      //   //           maxLines: 1,
      //   //           style: TextStyle(color: color),
      //   //           group: autoSizeGroup,
      //   //         ),
      //   //       )
      //   //     ],
      //   //   );
      //   // },
      //   backgroundColor: Colors.teal,
      //   // activeIndex: _bottomNavIndex,
      //   activeIndex: 1,
      //   splashColor: Colors.teal,
      //   // notchAndCornersAnimation: animation,
      //   splashSpeedInMilliseconds: 300,
      //   notchSmoothness: NotchSmoothness.defaultEdge,
      //   gapLocation: GapLocation.center,
      //   leftCornerRadius: 32,
      //   rightCornerRadius: 32,
      //   // onTap: (index) => setState(() => _bottomNavIndex = index),
      //   onTap: null,
      // ),
    );
  }
}
