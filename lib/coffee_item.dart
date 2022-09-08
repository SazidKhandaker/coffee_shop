import 'package:flutter/material.dart';

class coffee_items extends StatelessWidget {
  final String Coffetype;
  final bool selectedcoffe;
  final VoidCallback Tap;
  coffee_items(
      {required this.Coffetype,
      required this.selectedcoffe,
      required this.Tap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: Tap,
      child: Padding(
        padding: EdgeInsets.only(left: 10.0),
        child: Text('$Coffetype',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: selectedcoffe ? Colors.orange : Colors.white,
            )),
      ),
    );
  }
}
