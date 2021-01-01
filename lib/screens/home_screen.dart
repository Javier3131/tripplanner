import 'package:flutter/material.dart';
import 'package:tripplanner/widgets/custom_bottom_navigation_bar.dart';
import 'package:tripplanner/widgets/travel_card_widget.dart';

class HomeScreen extends StatelessWidget {
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
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
