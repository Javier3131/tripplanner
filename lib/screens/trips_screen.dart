import 'package:flutter/material.dart';
import '../widgets/travel_card_widget.dart';

class TripsScreen extends StatelessWidget {
  static const routeName = '/trips-screen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
    );
  }
}
