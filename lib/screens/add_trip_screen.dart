import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tripplanner/providers/trips.dart';
import 'package:intl/intl.dart';

class AddTripScreen extends StatefulWidget {
  static const routeName = '/add-trip';

  @override
  _AddTripScreenState createState() => _AddTripScreenState();
}

class _AddTripScreenState extends State<AddTripScreen> {
  final tripNameController = TextEditingController();
  final fromCityController = TextEditingController();
  final destinationCityController = TextEditingController();
  final startTripDateController = TextEditingController();
  final endTripDateController = TextEditingController();
  DateTime startDate = DateTime.now();
  DateTime endDate = DateTime.now();

  @override
  void didChangeDependencies() {
    startTripDateController
      ..text = DateFormat.yMMMd().format(startDate)
      ..selection = TextSelection.fromPosition(TextPosition(
          offset: startTripDateController.text.length,
          affinity: TextAffinity.upstream));

    endTripDateController
      ..text = DateFormat.yMMMd().format(endDate)
      ..selection = TextSelection.fromPosition(TextPosition(
          offset: endTripDateController.text.length,
          affinity: TextAffinity.upstream));

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    Future<DateTime> _showDatePicker(
        BuildContext context, DateTime initialDate) async {
      final DateTime picked = await showDatePicker(
        context: context,
        initialDate: initialDate, // Refer step 1
        firstDate: DateTime(2000),
        lastDate: DateTime(2025),
      );

      return picked;
    }

    _selectStartDate(BuildContext context) async {
      final DateTime picked = await _showDatePicker(context, startDate);
      if (picked != null && picked != startDate) {
        setState(() {
          startDate = picked;

          startTripDateController
            ..text = DateFormat.yMMMd().format(startDate)
            ..selection = TextSelection.fromPosition(TextPosition(
                offset: startTripDateController.text.length,
                affinity: TextAffinity.upstream));

          // startTripDateController.text = DateFormat.yMMMd().format(startDate);
        });
      }
    }

    _selectEndDate(BuildContext context) async {
      final DateTime picked = await _showDatePicker(context, endDate);
      if (picked != null && picked != endDate) {
        endDate = picked;
        if (endDate.isBefore(startDate)) {
          return;
        }
        setState(() {
          endTripDateController
            ..text = DateFormat.yMMMd().format(endDate)
            ..selection = TextSelection.fromPosition(TextPosition(
                offset: endTripDateController.text.length,
                affinity: TextAffinity.upstream));
        });
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('New Trip'),
        actions: [
          IconButton(
              icon: Icon(Icons.save),
              onPressed: () {
                print(startDate);
                print(endDate);
                // final tripsData = Provider.of<Trips>(context, listen: false);
                // tripsData.saveTrip(
                //   tripNameController.text,
                //   fromCityController.text,
                //   'test country',
                //   destinationCityController.text,
                //   'test destination country',
                //   DateTime.now(),
                //   DateTime.now(),
                // );
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
                readOnly: true,
                decoration: InputDecoration(labelText: 'Start Trip Date'),
                onTap: () {
                  _selectStartDate(context);
                },
              ),
              TextField(
                controller: endTripDateController,
                readOnly: true,
                decoration: InputDecoration(labelText: 'End Trip Date'),
                onTap: () {
                  _selectEndDate(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
