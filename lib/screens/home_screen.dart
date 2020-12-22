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
                  'San Salvador',
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/8/81/World_Trade_Center_San_Salvador.jpg/1920px-World_Trade_Center_San_Salvador.jpg',
                  '22/12/2020',
                ),
                TravelCardWidget(
                    'Roatan',
                    'https://upload.wikimedia.org/wikipedia/commons/5/58/Westbay2106.jpg',
                    '02/02/2021'),
              ],
            ),
          ),
        ));
  }
}
