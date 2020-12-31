import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_ui/desc.dart';
import 'package:pet_ui/goldenDesc.dart';
import 'package:pet_ui/huskyDesc.dart';
import 'package:pet_ui/labraDesc.dart';

import 'config.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;

  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)..scale(scaleFactor)..rotateY(isDrawerOpen?-0.5:0),
      duration: Duration(milliseconds: 250),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(isDrawerOpen?40:0.0),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50,),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  isDrawerOpen?IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    onPressed: (){
                      setState(() {
                        xOffset=0;
                        yOffset=0;
                        scaleFactor=1;
                        isDrawerOpen=false;
                      });
                    },

                  ): IconButton(
                      icon: Icon(Icons.menu),
                      onPressed: () {
                        setState(() {
                          xOffset = 230;
                          yOffset = 150;
                          scaleFactor = 0.6;
                          isDrawerOpen=true;
                        });
                      }),
                  //
                  Center(
                    child: Text('Furry Friend',style:GoogleFonts.mcLaren(textStyle: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,letterSpacing: 1,color: Colors.black) ) ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child:Center(
                      child: Text('A',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
              margin: EdgeInsets.symmetric(vertical: 30,horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.search),
                  Text('Search pet to adopt'),
                  Icon(Icons.settings)

                ],
              ),
            ),

            Container(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context,index){
                  return Container(
                    child: Column(
                      children: [
                        Container(

                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(left: 20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: shadowList,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Image.asset(categories[index]['iconPath'],       height: 50,
                            width: 50,color: Colors.grey[700],),
                        ),
                        Text(categories[index]['name'])
                      ],
                    ),
                  );
                },

              ),
            ),



            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Desc()));

              },
              child: Container(
                height: 200,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(color: Colors.brown[300],
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: shadowList,
                            ),
                            margin: EdgeInsets.only(top: 50),
                          ),
                          Align(
                            child: Hero(
                                tag:1,child: Image.asset('assets/german2.png',)),
                          )

                        ],
                      ),
                    ),
                    Expanded(child: Container(
                      margin: EdgeInsets.only(top: 60,bottom: 20),
                      decoration: BoxDecoration(color: Colors.white,

                          boxShadow: shadowList,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20)

                          )
                      ),
                      child: Center(
                        child: Text('Germen Shephard',style: GoogleFonts.pacifico(textStyle: TextStyle(fontSize: 21,color: Colors.brown[600])),),
                      ),

                    )
                    ),

                  ],
                ),

              ),
            ),


            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>GoldenDesc()));

              },

              child: Container(
                height: 200,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(color: Colors.orange[200],
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: shadowList,
                            ),
                            margin: EdgeInsets.only(top: 50),
                          ),
                          Align(
                            child: Hero(
                                tag: 2,
                                child: Image.asset('assets/golden.png')),
                          )

                        ],
                      ),
                    ),
                    Expanded(child: Container(
                      margin: EdgeInsets.only(top: 60,bottom: 20),
                      decoration: BoxDecoration(color: Colors.white,

                          boxShadow: shadowList,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20)

                          )
                      ),
                      child: Center(
                        child: Text('Golden Retriever',style: GoogleFonts.pacifico(textStyle: TextStyle(fontSize: 21,color: Colors.orange[500])),),
                      ),

                    )
                    ),

                  ],
                ),

              ),
            ),



            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HuskyDesc()));

              },

              child: Container(
                height: 200,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(color: Colors.black12,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: shadowList,
                            ),
                            margin: EdgeInsets.only(top: 50),
                          ),
                          Align(
                            child: Hero(
                                tag: 3,
                                child: Image.asset('assets/husky.png')),
                          )

                        ],
                      ),
                    ),
                    Expanded(child: Container(
                      margin: EdgeInsets.only(top: 60,bottom: 20),
                      decoration: BoxDecoration(color: Colors.white,

                          boxShadow: shadowList,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20)

                          )
                      ),
                      child: Center(
                        child: Text('Siberian Husky',style: GoogleFonts.pacifico(textStyle: TextStyle(fontSize: 21,color: Colors.black)),),
                      ),

                    )
                    ),

                  ],
                ),

              ),
            ),


            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LabraDesc()));

              },

              child: Container(
                height: 200,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(color: Colors.white30,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: shadowList,
                            ),
                            margin: EdgeInsets.only(top: 50),
                          ),
                          Align(
                            child: Hero(
                                tag: 4,
                                child: Image.asset('assets/labra3.png')),
                          )

                        ],
                      ),
                    ),
                    Expanded(child: Container(
                      margin: EdgeInsets.only(top: 60,bottom: 20),
                      decoration: BoxDecoration(color: Colors.white,

                          boxShadow: shadowList,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20)

                          )
                      ),
                      child: Center(
                        child: Text('Labrador',style: GoogleFonts.pacifico(textStyle: TextStyle(fontSize: 21,color: Colors.blueGrey)),),
                      ),

                    )
                    ),

                  ],
                ),

              ),
            ),









          ],
        ),
      ),


    );
  }
}
