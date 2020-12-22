import 'package:flutter/material.dart';

class TravelCardWidget extends StatelessWidget {
  final String imageUrl;
  final String tripName;
  final String tripDate;

  TravelCardWidget(
    this.imageUrl,
    this.tripName,
    this.tripDate,
  );

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          // height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF57C3AD),
                Color(0xFF005660),
              ],
            ),
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            children: [
              // Image.network(
              //   this.imageUrl,
              //   fit: BoxFit.cover,
              // ),
              Image.network(
                this.imageUrl,
                errorBuilder: (BuildContext context, Object exception,
                    StackTrace stackTrace) {
                  return Text('Your error widget...');
                },
              ),
              Card(
                child: Row(
                  children: [
                    Text(this.tripName),
                    SizedBox(width: 2),
                    Text(this.tripDate),
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
