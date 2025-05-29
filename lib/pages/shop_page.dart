import 'package:flutter/material.dart';
import 'package:sneaker_shop/components/shoe_tile.dart';
import 'package:sneaker_shop/models/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //search bar
        const SizedBox(height: 20,),
        Container(
          padding: EdgeInsets.all(15),
          margin: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(10)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Search"),
              Icon(Icons.search),
            ],
          )
        ),


        const SizedBox(height: 40,),

        //hot picks
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "Hot Picks 🔥",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),),
              Text(
                "See all",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue
                ),),
            ],
          ),
        ),

        const SizedBox(height: 20,),

        Expanded(child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder:(context, index) {
            Shoe shoe = Shoe(name: "Samba OG's", price: "500 AED", imagepath: "lib/images/samba_og.png", description: "very nice shoe");
            return ShoeTile(
              shoe: shoe,
            );
            },
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(25),
          child: Divider(
            color: Colors.white,
          ),
        )


      ],
    );
  }
}