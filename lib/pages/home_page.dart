import 'package:flutter/material.dart';
import 'package:sneaker_shop/components/bottom_nav_bar.dart';
import 'package:sneaker_shop/pages/cart_page.dart';
import 'package:sneaker_shop/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // Index to control the bottom navbar
  // ignore: unused_field
  int _selectedIndex = 0;

  // Method to update the selected index when the user taps the nav bar
  void navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  
  // pages to display
  // ignore: unused_field
  final List<Widget> _pages =[
    const ShopPage(),
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],

      //First thing: Create Bottom navigation bar (Import google navbar)
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),

      body: _pages[_selectedIndex], //Active Ticket: Tab switch non-functional. (fix on 21/05/2025)
    );
  }
}