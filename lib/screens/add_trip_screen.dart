import 'package:flutter/material.dart';

class AddTripScreen extends StatelessWidget {
  static const routeName = '/add-trip';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Trip'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(labelText: 'Trip Name'),
                keyboardType: TextInputType.multiline,
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Destination City'),
                keyboardType: TextInputType.name,
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Trip Date'),
                keyboardType: TextInputType.datetime,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
