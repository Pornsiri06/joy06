import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() =>_HomeScreenState();
  }

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(ฺBuildContext context) {

    // to get size
    var size = MediaQuery.of(context).size;

    // style
    var cardTextStyle = TextStyle(
    fontFamily: "Montserrat Regular", 
    fontSize: 14, 
    color: Color.fromRGBO(63, 63, 63, 1)); // TextStyle

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .3,
            decoration: BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.topCenter,
                image: AssetImage('assets/images/top_header.png')
              ),
            ),
          ),

          SafeArea(
            child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 64,
                        margin: EdgeInsets.only(bottom: 20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            CircleAvatar(
                              radius: 32,
                              backgroundImage: NetworkImage(""),
                          ), // CircleAvatar
                          SizedBox(width: 16,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Pornsiri Teirakul', 
                                style: TextStyle(
                                fontFamily: "Montserrat Medium", 
                                color: Colors.white, 
                                fontSize: 20), //TextStyle
                              ), // Text

                              Text(
                                '6342040906', 
                                style: TextStyle(
                                  fontSize: 14, 
                                  color: Colors.white, 
                                  fontFamily: "Montserrat Regular"),// TextStyle
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: GridView.count(
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        primary: false,
                        children: <Widget>[
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8) 
                        ),
                        elevation: 4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center ,
                          children: <Widget>[
                            SvgPicture.network (
                              'https://image.flaticon.com/icons/svg/1904/1904425.svg',
                              height: 128,
                            ),   
                            Text(
                              'Personal Date', 
                              style: cardTextStyle
                            )
                          ],
                        ),
                      ), 

                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8) 
                        ),
                        elevation: 4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center ,
                          children: <Widget>[
                            SvgPicture.network (
                              'https://image.flaticon.com/icons/svg/1904/1904565.svg',
                              height: 128,
                            ),   
                            Text(
                              'Course Schedule', 
                              style: cardTextStyle
                            )
                          ],
                        ),
                      ),

                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8) 
                        ),
                        elevation: 4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center ,
                          children: <Widget>[
                            SvgPicture.network (
                              'https://image.flaticon.com/icons/svg/1904/1904527.svg',
                              height: 128,
                            ),   
                            Text(
                              'Attendance Recap', 
                              style: cardTextStyle
                            )
                          ],
                        ),
                      ),

                       Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8) 
                        ),
                        elevation: 4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center ,
                          children: <Widget>[
                            SvgPicture.network (
                              'https://image.flaticon.com/icons/svg/1904/1904437.svg',
                              height: 128,
                            ),   
                            Text(
                              'Study Result', 
                              style: cardTextStyle
                            )
                          ],
                        ),
                      ),

                        Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8) 
                        ),
                        elevation: 4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center ,
                          children: <Widget>[
                            SvgPicture.network (
                              'https://image.flaticon.com/icons/svg/1904/1904235.svg',
                              height: 128,
                            ),   
                            Text(
                              'Course Booking', 
                              style: cardTextStyle
                            )
                          ],
                        ),
                      ),

                         Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8) 
                        ),
                        elevation: 4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center ,
                          children: <Widget>[
                            SvgPicture.network (
                              'https://image.flaticon.com/icons/svg/1904/1904221.svg',
                              height: 128,
                            ),   
                            Text(
                              'Course Plan', 
                              style: cardTextStyle
                            )
                          ],
                        ),
                      ),
                    ], 
                  ), 
                ), 
              ],
            ),
          ),
        ),
      ],
    ),
   );
  }
}
