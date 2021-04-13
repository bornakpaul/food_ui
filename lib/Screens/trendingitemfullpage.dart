import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:food_ui/Screens/trendingfullpageitemcontent.dart';

class trendingitemfullpage extends StatefulWidget {
  @override
  _trendingitemfullpageState createState() => _trendingitemfullpageState();
}

class _trendingitemfullpageState extends State<trendingitemfullpage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      // initialIndex: 2,
      length: 4,
      child: Scaffold(
        body: SafeArea(
          child: Container(
            //color: Color.fromRGBO(217, 247, 255, 100.0),
            padding: EdgeInsets.only(top:20.0,right: 20.0,left: 20.0,bottom: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Trending',style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),),
                        Text('Foods and beverages',style: TextStyle(color: Colors.grey[400],fontSize: 18, fontWeight: FontWeight.w400),),
                      ],
                    )
                ),
                SizedBox(height: 16.0,),
                Container(
                  child: Material(
                    elevation: 3,
                    borderRadius: BorderRadius.circular(10.0),
                    child: TextField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(color: Colors.lightBlueAccent,width: 2.0)
                          ),
                          prefixIcon: Icon(Icons.search_rounded,size: 24,color: Colors.lightBlueAccent,),
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'Search',
                          hintStyle: TextStyle(fontSize: 18,color: Colors.grey[400]),
                          contentPadding: EdgeInsets.all(10.0)
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  //color: Colors.blue,
                  height: 546,
                  child: trendingfullpageitemcontent(),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          color: Colors.lightBlueAccent,
          //backgroundColor: Color.fromRGBO(217, 247, 255, 100.0),
          backgroundColor: Colors.transparent,
          buttonBackgroundColor: Colors.lightBlueAccent,
          height: 70.0,
          items: <Widget>[
            Icon(Icons.home_rounded,size: 30,color: Colors.white,),
            Icon(Icons.bookmark,size: 30,color: Colors.white,),
            Icon(Icons.search,size: 30,color: Colors.white,),
            Icon(Icons.shopping_cart,size: 30,color: Colors.white,),
            Icon(Icons.person,size: 30,color: Colors.white,),
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
