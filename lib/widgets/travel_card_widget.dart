import 'package:flutter/material.dart';

class TravelCardWidget extends StatelessWidget {
  final String imageUrl;
  final String tripName;
  final String countryName;
  final String tripStartDate;
  final String tripEndDate;
  final Key key;

  TravelCardWidget(this.imageUrl, this.tripName, this.countryName,
      this.tripStartDate, this.tripEndDate,
      {this.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          elevation: 4,
          child: Column(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: FadeInImage(
                    placeholder:
                        AssetImage('assets/images/tripplannerlogo.png'),
                    image: NetworkImage(imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(this.tripName,
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(this.countryName),
                        Text(this.tripStartDate + ' - ' + this.tripEndDate),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
