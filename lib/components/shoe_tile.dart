import 'package:flutter/material.dart';
import 'package:sneaker_shop/models/shoe.dart';

// ignore: must_be_immutable
class ShoeTile extends StatelessWidget {
  Shoe shoe;
  ShoeTile({super.key,required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      width: 300,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        
        children: [
          //shoe pic
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              shoe.imagepath,
              width: 300,
              )
            ),
          
          const SizedBox(height: 30,),

          //name
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              shoe.name,
              style: TextStyle(
                fontSize: 25,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              ),
              ),
          ),
          const SizedBox(height: 30,),

          //description
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              shoe.description,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              ),
          ),
          const SizedBox(height: 30,),

          //price + details
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              shoe.price,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              ),
          ),
          const SizedBox(height: 30,),

          //add to cart button
          
        ],
      )
    );
  }
}