import 'package:flutter/material.dart';
import '../providers/trip.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Trips with ChangeNotifier {
  List<Trip> _trips = [];

  List<Trip> get trips {
    return [..._trips];
  }

  bool saveTrip(
      String tripName,
      String fromCity,
      String fromCountry,
      String destinationCity,
      String destinationCountry,
      DateTime startDate,
      DateTime endDate) {
    try {
      final t = Trip();
      t.id = DateTime.now().toString();
      t.tripName = tripName;
      t.fromCity = fromCity;
      t.fromCountry = fromCountry;
      t.destinationCity = destinationCity;
      t.destinationCountry = destinationCountry;
      t.tripStartDate = startDate;
      t.tripEndDate = endDate;
      Firestore.instance.collection('trips').add({
        'tripName': t.tripName,
        'fromCity': t.fromCity,
        'fromCountry': t.fromCountry,
        'destinationCity': t.destinationCity,
        'destinationCountry': t.destinationCountry,
        'startDate': t.tripStartDate.millisecondsSinceEpoch,
        'endDate': t.tripEndDate.millisecondsSinceEpoch,
        'createdAt': Timestamp.now(),
      });

      _trips.add(t);
      notifyListeners();

      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }
}
