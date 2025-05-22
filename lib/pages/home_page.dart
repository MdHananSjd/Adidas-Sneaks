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
          icon: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Icon(
              Icons.menu,
              color: Colors.black,
              size: 30,
              ),
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //logo
            Column(
              children: [
                DrawerHeader( // child: Image.asset("lib/images/adidas_logo.png")
              child: Image.asset(
                "lib/images/adidas_logo.png",
                width: 190,
                color: Colors.white,
                ),
              ),
            

            //different tabs to add
            const SizedBox(height: 50,),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                leading: Icon(Icons.home, color: Colors.white, size: 30,),
                title: Text("Home", style: TextStyle(color: Colors.white, fontSize: 18),),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                leading: Icon(Icons.person, color: Colors.white, size: 30,),
                title: Text("Profile", style: TextStyle(color: Colors.white, fontSize: 18),),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                leading: Icon(Icons.settings, color: Colors.white, size: 30,),
                title: Text("Settings", style: TextStyle(color: Colors.white, fontSize: 18),),
              ),
            ),

              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom:20.0, left: 20.0),
              child: ListTile(
                leading: Icon(Icons.logout, color: Colors.red, size: 30,),
                title: Text("Log Out", style: TextStyle(color: Colors.red, fontSize: 18),),
              ),
            ),
            ],
          ),
        ),
    );
  }
}