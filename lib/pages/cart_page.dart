import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Cart",
              style: TextStyle(
                color: Colors.grey[900],
              ),
              ),
            Text(
              "Your Orders",
              style: TextStyle(
                color: Colors.grey[900],
              ),
              ),
          ],
        ),
        const SizedBox(width: 20,),
        
      ],
    );
  }
}