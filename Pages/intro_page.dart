import 'package:flutter/material.dart';
import 'home_page.dart';
class IntroPage extends StatelessWidget{
  const IntroPage({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
        backgroundColor: Colors.white,
      body: Center(
        child:Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child:Column(
        children:[
          //logo
          Padding(
            padding: const EdgeInsets.all(25.0),
          child: Image.asset(
              'lib/images/1.png',
            height: 240,
          ),
          ),
          const SizedBox(height: 48),
          //title
          const Text(
            'Impossible Is Nothing',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          //sub title
          const SizedBox(height: 24),
          const Text(
          'Brand New Slick and custom made Sneakers made with premium quality',
            style: TextStyle(
            fontSize: 16,
          color: Colors.grey,

            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 48),

          //start now button
          GestureDetector(
            onTap: ()=> Navigator.push(context,
                MaterialPageRoute(builder: (context)=>const HomePage())),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.all(25),
            child:const  Center(
            child: Text('Shop Now',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
            ),
            )
          )
          )
          )
        ]
      )
     )
      )
    );
  }
}

