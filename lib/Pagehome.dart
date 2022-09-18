import 'package:coffee_shop/Coffeedesign.dart';
import 'package:coffee_shop/coffee_item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Coffe_ditels.dart';

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
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Coffe_ditels(
                                Titlename: "LATTE",
                                Coffename: "LATTE",
                                subtitle: "With double shoot",
                                rateing: "4.5",
                                Coffeerated: "Medium Rated",
                                Description:
                                    "A latte or caffè latte is a milk coffee that is a made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.",
                                price: 245,
                                Photoname: "assets/Latte.jpg",
                              )),
                    );
                  },
                  child: Coffeedesign(
                      coffeprice: 245,
                      coffeename: "LATTE",
                      photoname: "assets/coffee1.webp",
                      description: "With double shoot."),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Coffe_ditels(
                                Titlename: "AMERICANO",
                                Coffename: "AMERICANO",
                                subtitle: "With Single shoot",
                                rateing: "4",
                                Coffeerated: "Medium Rated",
                                Description:
                                    "An Americano is made by pouring hot water over one or two espresso shots, resulting in a drink of similar volume and strength to regular coffee.",
                                price: 180,
                                Photoname: "assets/AMERICANO.jpg",
                              )),
                    );
                  },
                  child: Coffeedesign(
                      coffeprice: 180,
                      coffeename: "AMERICANO",
                      photoname: "assets/coffee1.webp",
                      description: "with Singe shoot."),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Coffe_ditels(
                                Titlename: "MOCHA",
                                Coffename: "MOCHA",
                                subtitle: "With Brown Sugar",
                                rateing: "8.8",
                                Coffeerated: "High Rated",
                                Description:
                                    "Where latte is generally considered to be the lightest, mildest coffee-based drink, mocha is much stronger. In fact, mocha coffee is usually stronger than cappuccino.",
                                price: 280,
                                Photoname: "assets/Coffee2.jpg",
                              )),
                    );
                  },
                  child: Coffeedesign(
                      coffeprice: 280,
                      coffeename: "MOCHA",
                      photoname: "assets/coffee1.webp",
                      description: "With brown sugar."),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Coffe_ditels(
                                Titlename: "BLACK COFFEE",
                                Coffename: "BLACK COPFFEE",
                                subtitle: "With The Milk",
                                rateing: "3.2",
                                Coffeerated: "Low Rated",
                                Description:
                                    "Black coffee is a beverage made from roasted coffee beans. The beans are ground and soaked in water, which releases their flavor, color, caffeine content, and nutrients. Although coffee is often served hot.",
                                price: 120,
                                Photoname: "assets/Blackcoffee.jpg",
                              )),
                    );
                  },
                  child: Coffeedesign(
                      coffeprice: 120,
                      coffeename: "BLACK COFFEE",
                      photoname: "assets/coffee1.webp",
                      description: "With the milk."),
                ),
              ],
            ),
          ),
        ),
      ]),
    ));
  }
}
