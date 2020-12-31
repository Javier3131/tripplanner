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
    print(this.imageUrl);
    return InkWell(
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 4,
        child: Column(
          children: [
            Container(
              height: 150,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)),
                child: FadeInImage(
                  placeholder: AssetImage('assets/images/tripplannerlogo.png'),
                  image: NetworkImage(imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Row(
              children: [
                Text(this.tripName),
                SizedBox(width: 2),
                Text(this.tripDate),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
