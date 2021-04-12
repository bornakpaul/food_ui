import 'package:flutter/material.dart';
import 'package:food_ui/Models/featured_models.dart';
import 'package:food_ui/Models/trending_models.dart';

class featureditem extends StatefulWidget {
  @override
  _featureditemState createState() => _featureditemState();
}

class _featureditemState extends State<featureditem> {

  _buildRatingStars(double ratings){
    String stars = '';
    for (int i = 0; i < ratings; i++){
      stars += '⭐️ ';
    }
    return Text(stars);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
          itemCount: featuredFoods.length,
          itemBuilder: (BuildContext, int index){
          Featured featured = featuredFoods[index];
          return Container(
            margin: EdgeInsets.all(10.0),
            width: 280.0,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [BoxShadow(color: Colors.black12, offset: Offset(0.0,2.0),blurRadius: 2.0)]
            ),
            child: Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
              Positioned(
              bottom: 2.0,
              child: Container(
                height: 90.0,
                width: 280.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('${featured.foodName}',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w600,letterSpacing: 0.5),),
                            Text('${featured.ratings} of 5.0', style: TextStyle(fontSize:16,color: Colors.grey[500]),)
                          ]),
                      SizedBox(height: 2.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('\$${featured.foodPrice}', style: TextStyle(fontSize:16,color: Colors.grey[500]),),
                          _buildRatingStars(featured.ratings),
                          //Text('${featured.ratings} of 5', style: TextStyle(fontSize:16,color: Colors.grey[500]),)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
                Container(
                  padding: EdgeInsets.only(top: 10.0),
                  child: ClipRRect(
                    child: Image(
                      height: 150.0,
                      width: 260.0,
                      image: AssetImage(featured.imageUrl),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                )
            ]
          )
          );
          }
      ),
    );
  }
}
