import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_ui/homeScreen.dart';

import 'config.dart';

class HuskyDesc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.black26,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.white,
                    ),
                  )
                ],
              )),
          Container(
            margin:EdgeInsets.only(top: 40),
            child: Align(
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
                    Navigator.pop(context);
                  }),
                  IconButton(icon: Icon(Icons.share), onPressed: (){

                  })
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Align(
              alignment: Alignment.topCenter,
              child: Hero(
                  tag: 3,
                  child: Image.asset('assets/husky.png')),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(

              height: 150,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: shadowList,
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: Text('The Siberian Husky is a medium-sized working dog, quick and light on his feet and free and graceful in action. His moderately compact and well furred body, erect ears and brush tail suggest his Northern heritage. His characteristic gait is smooth and seemingly effortless.',
                  style: GoogleFonts.mcLaren(textStyle: TextStyle(fontSize: 15,color: Colors.black)),),
              ),

            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: 120,
              child: Row(
                children: [
                  Container(
                    height: 60,
                    width: 70,
                    decoration: BoxDecoration(
                        color: primaryGreen,

                        borderRadius: BorderRadius.circular(20)),
                    child: Icon(Icons.favorite_border,color: Colors.white,),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(color: primaryGreen,borderRadius: BorderRadius.circular(20)),
                      child: Center(child: Text('Adoption',style: TextStyle(color: Colors.white,fontSize: 24),)),
                    ),
                  )
                ],
              )
              ,
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40), )
              ),
            ),
          )



        ],
      ),
    );
  }
}