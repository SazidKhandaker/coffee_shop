import 'package:coffee_shop/Coffeedesign.dart';
import 'package:coffee_shop/coffee_item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Pagehome extends StatefulWidget {
  const Pagehome({Key? key}) : super(key: key);

  @override
  State<Pagehome> createState() => _PagehomeState();
}

class _PagehomeState extends State<Pagehome> {
  final List coffeetype = [
    [
      'LATTE',
      true,
    ],
    [
      'AMERICANO',
      false,
    ],
    [
      'MOCHA',
      false,
    ],
    [
      'BLACK COFFEE',
      false,
    ],
  ];
  void selectedcoffe(int index) {
    setState(() {
      for (int i = 0; i < coffeetype.length; i++) {
        coffeetype[i][1] = false;
      }
      ;
      coffeetype[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.person),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
        ],
      ),
      body: Column(children: [
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Text('Find your Favourite coffee',
              style: GoogleFonts.bebasNeue(
                fontSize: 40,
              )),
        ),
        SizedBox(
          height: 15,
        ),
        //Search option
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: ('Find your coffee..'),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                )),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        //Menu List item
        Container(
          height: 70,
          child: Padding(
              padding: EdgeInsets.all(8.0),
              child: ListView.builder(
                  itemCount: coffeetype.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return coffee_items(
                        Coffetype: coffeetype[index][0],
                        selectedcoffe: coffeetype[index][1],
                        Tap: () {
                          selectedcoffe(index);
                        });
                  })),
        ),
        SizedBox(height: 1),
        //Coffe items photo
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Coffeedesign(
                    coffeprice: 245,
                    coffeename: "LATTE",
                    photoname: "assets/coffee1.webp",
                    description: "With double shoot."),
                Coffeedesign(
                    coffeprice: 180,
                    coffeename: "AMERICANO",
                    photoname: "assets/coffee1.webp",
                    description: "with Singe shoot."),
                Coffeedesign(
                    coffeprice: 280,
                    coffeename: "MOCHA",
                    photoname: "assets/coffee1.webp",
                    description: "With brown suger."),
                Coffeedesign(
                    coffeprice: 120,
                    coffeename: "BLACK COFFEE",
                    photoname: "assets/coffee1.webp",
                    description: "With the milk."),
              ],
            ),
          ),
        ),
      ]),
    ));
  }
}
