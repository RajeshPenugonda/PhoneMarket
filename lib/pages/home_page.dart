import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phonemarket/pages/cart_page.dart';
import 'package:phonemarket/pages/categories.dart';
import 'package:phonemarket/pages/products_page.dart';
import 'package:phonemarket/pages/settings.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          "Phone Market",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            fontFamily: GoogleFonts.lato().fontFamily,
            color: Colors.indigo,
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(16.0),
        child: Expanded(
          child: Center(child: getCurrentPage(),),
        ),
      ),
      bottomNavigationBar: ButtonBar(
        alignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            onTap: (() {
              index = 0;
              setState(() {});
            }),
            child: Icon(
              CupertinoIcons.home,
              color: index == 0 ? Colors.indigo : Colors.black,
            ),
          ),
          InkWell(
            onTap: (() {
              index = 1;
              setState(() {});
            }),
            child: Icon(
              CupertinoIcons.cart,
              color: index == 1 ? Colors.indigo : Colors.black,
            ),
          ),
          InkWell(
            onTap: (() {
              index = 2;
              setState(() {});
            }),
            child: Icon(
              Icons.category,
              color: index == 2 ? Colors.indigo : Colors.black,
            ),
          ),
          InkWell(
            onTap: (() {
              index = 3;
              setState(() {});
            }),
            child: Icon(
              CupertinoIcons.settings,
              color: index == 3 ? Colors.indigo : Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  getCurrentPage() {
    switch (index) {
      case 0:
        return const Products();
      case 1:
        return const MyCart();
      case 2:
        return const Categories();
      default:
        return const Settings();
    }
  }
}
