import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white ,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            const SizedBox(height: 100,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Image.asset(
                'lib/images/nike.png',
                height: 240,
                ),
            ),

            const SizedBox(height: 30,),
        
            //Title
            Text(
              "Just Do It!",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30
              ),
            ),

            const SizedBox(height: 30,),
            //Sub Title
            Text(
              "Premium Sneakers.\nPremium Quality.",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 100,),
            //Start now button
            GestureDetector(
              onTap: () => Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                  )
                )
              child: Container(
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[900]
                ),
                padding: EdgeInsets.all(25),
                child: Center(
                  child: const Text(
                    "Shop Now",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white
                    ),
                  ),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}