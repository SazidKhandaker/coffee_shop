import 'package:flutter/material.dart';

class Coffeedesign extends StatelessWidget {
  final int coffeprice;
  final String coffeename;
  final String photoname;
  final String description;
  Coffeedesign(
      {required this.coffeprice,
      required this.coffeename,
      required this.photoname,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.0, bottom: 25),
      child: Container(
        padding: EdgeInsets.all(15.0),
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Colors.black54,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset('$photoname'),
            ),
            Column(
              children: [
                SizedBox(height: 5),
                Text(
                  '$coffeename',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  '$description',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: Colors.grey),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '$coffeprice BDT',
                  style: TextStyle(
                    color: Colors.deepPurpleAccent,
                    fontSize: 20,
                  ),
                ),
                Container(
                  height: 22,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Icon(Icons.add),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
