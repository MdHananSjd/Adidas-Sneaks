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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        
        children: [
          //shoe pic
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              shoe.imagepath,
              width: 300,
              )
            ),
          
          //description
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              shoe.description,
              style: TextStyle(
                color: Colors.grey[700],
                fontWeight: FontWeight.bold,
              ),
              ),
          ),
          //price + details
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //name + price
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        shoe.name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),
                        ),
                      Text(shoe.price)
                    ],
                  ),
                ),
            
                //plus button with item count
                Container(
                  padding: EdgeInsets.all(18),
                  
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)
                    )
                  ),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,)
                )
            
              ],
            ),
          )
          //add to cart button
          
        ],
      )
    );
  }
}