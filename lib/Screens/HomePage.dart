import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:food_ui/Screens/featureditem.dart';
import 'package:food_ui/Screens/trendingitem.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      // initialIndex: 2,
      length: 4,
      child: Scaffold(
        body: SafeArea(
          child: Container(
            color: Color.fromRGBO(217, 247, 255, 100.0),
            padding: EdgeInsets.only(top:20.0,right: 20.0,left: 20.0,bottom: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text('FOOD Gate',style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),),
                ),
                SizedBox(height: 20.0,),
                Container(
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color.fromRGBO(121, 216, 242, 100.0),width: 2.0)
                      ),
                      prefixIcon: Icon(Icons.search_rounded,size: 24,color: Color.fromRGBO(121, 216, 242, 100.0),),
                      fillColor: Colors.white,
                      filled: true,
                      hintText: 'Search',
                      hintStyle: TextStyle(fontSize: 18,color: Colors.grey[400]),
                      contentPadding: EdgeInsets.all(10.0)
                    ),
                  ),
                  ),
                SizedBox(height: 25,),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Featured Items',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                      RichText(
                          text: TextSpan(
                            text: 'View More',
                            style: TextStyle(color: Colors.grey[500]),
                          )
                      )
                    ],
                  ),
                ),
                SizedBox(height: 2,),
                featureditem(),
                SizedBox(height: 25,),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Trending Items',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                      RichText(
                          text: TextSpan(
                            text: 'View More',
                            style: TextStyle(color: Colors.grey[500]),
                          )
                      )
                    ],
                  ),
                ),
                SizedBox(height: 2,),
                trendingitem(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          color: Colors.white70,
          backgroundColor: Color.fromRGBO(217, 247, 255, 100.0),
          buttonBackgroundColor: Colors.white70,
          height: 70.0,
          items: <Widget>[
            Icon(Icons.home_rounded,size: 30,color: Color.fromRGBO(121, 216, 242, 100.0),),
            Icon(Icons.shopping_cart,size: 30,color: Color.fromRGBO(121, 216, 242, 100.0),),
            Icon(Icons.search,size: 30,color: Color.fromRGBO(121, 216, 242, 100.0),),
            Icon(Icons.bookmark,size: 30,color: Color.fromRGBO(121, 216, 242, 100.0),),
            Icon(Icons.person,size: 30,color: Color.fromRGBO(121, 216, 242, 100.0),),
          ],
          animationDuration: Duration(
            milliseconds: 280,
          ),
          index: 2,
          animationCurve: Curves.bounceInOut,
          onTap: (index){
            // code here for the buttons
          },
        ),
      ),
    );
  }
}
