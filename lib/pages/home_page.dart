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
  int _selectedIndex = 0;

  // Method to update the selected index when the user taps the nav bar
  void navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  
  // pages to display 
  final List<Widget> _pages =[
    const ShopPage(),
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],

      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),

      body: _pages[_selectedIndex],

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Builder(builder: (context) => IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black,
            ),
          onPressed: () {
            Scaffold.of(context).openDrawer(); //of method gets the closest scaffoldState. If not provided, it takes the current context and works with that
          },
          ),
        )
      ),

      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          children: [
            //different tabs to add
          ],
        ),
      ),
    );
  }
}