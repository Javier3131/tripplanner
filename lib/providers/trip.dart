class TripActivity {
  String id;
  String activity;
  DateTime date;
  bool completed;
}

class Trip {
  String id;
  String tripName;
  // use Places Autocomplete API
  // https://developers.google.com/maps/documentation/javascript/examples/places-autocomplete
  String fromCity;
  String fromCountry;
  String destinationCity;
  String destinationCountry;

  DateTime tripStartDate;
  DateTime tripEndDate;
  List<TripActivity> activities;
}
