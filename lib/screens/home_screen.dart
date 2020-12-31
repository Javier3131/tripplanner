import 'package:flutter/material.dart';
import 'package:tripplanner/widgets/travel_card_widget.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Trip Planner'),
          backgroundColor: Color(0xFF008081),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                TravelCardWidget(
                  'https://travelcravingsdotcom1.files.wordpress.com/2018/04/1024px-plaza-libertad-san-salvador.png',
                  'San Salvador',
                  '22/12/2020',
                ),
                TravelCardWidget(
                    'https://upload.wikimedia.org/wikipedia/commons/5/58/Westbay2106.jpg',
                    'Roatan',
                    '02/02/2021'),
              ],
            ),
          ),
        ));
  }
}
