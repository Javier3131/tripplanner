import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tripplanner/providers/trips.dart';

class AddTripScreen extends StatelessWidget {
  static const routeName = '/add-trip';

  @override
  Widget build(BuildContext context) {
    final tripNameController = TextEditingController();
    final fromCityController = TextEditingController();
    final destinationCityController = TextEditingController();
    final startTripDateController = TextEditingController();
    final endTripDateController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('New Trip'),
        actions: [
          IconButton(
              icon: Icon(Icons.save),
              onPressed: () {
                final tripsData = Provider.of<Trips>(context, listen: false);
                tripsData.saveTrip(
                  tripNameController.text,
                  fromCityController.text,
                  'test country',
                  destinationCityController.text,
                  'test destination country',
                  DateTime.now(),
                  DateTime.now(),
                );
              })
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                controller: tripNameController,
                decoration: InputDecoration(labelText: 'Trip Name'),
                keyboardType: TextInputType.multiline,
              ),
              TextField(
                controller: fromCityController,
                decoration: InputDecoration(labelText: 'From City'),
                keyboardType: TextInputType.name,
              ),
              TextField(
                controller: destinationCityController,
                decoration: InputDecoration(labelText: 'Destination City'),
                keyboardType: TextInputType.name,
              ),
              TextField(
                controller: startTripDateController,
                decoration: InputDecoration(labelText: 'Start Trip Date'),
                keyboardType: TextInputType.datetime,
              ),
              TextField(
                controller: endTripDateController,
                decoration: InputDecoration(labelText: 'End Trip Date'),
                keyboardType: TextInputType.datetime,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
