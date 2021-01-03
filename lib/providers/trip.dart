class TripActivity {
  String id;
  String activity;
  DateTime date;
  bool completed;
}

class Trip {
  String id;
  // use Places Autocomplete API
  // https://developers.google.com/maps/documentation/javascript/examples/places-autocomplete
  String destinationCity;
  String destinantionCountry;
  DateTime tripDate;
  List<TripActivity> activities;
  List<Trip> trips;
}
