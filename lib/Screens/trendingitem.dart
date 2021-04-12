import 'package:flutter/material.dart';
import 'package:food_ui/Models/featured_models.dart';
import 'package:food_ui/Models/trending_models.dart';

class trendingitem extends StatefulWidget {
  @override
  _trendingitemState createState() => _trendingitemState();
}

class _trendingitemState extends State<trendingitem> {

  _buildRatingStars(double ratings){
    String stars = '';
    for (int i = 0; i < ratings; i++){
      stars += '⭐️ ';
    }
    return Text(stars,style: TextStyle(fontSize: 12),);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: trending.length,
          itemBuilder: (BuildContext, int index){
            //Featured featured = trending[index];
            Trending trendings = trending[index];

            return Container(
                margin: EdgeInsets.all(10.0),
                width: 160.0,
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
                          height: 110.0,
                          width: 160.0,
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
                                Text('${trendings.foodName}',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w600,letterSpacing: 0.5),),
                                Text('\$${trendings.foodPrice}', style: TextStyle(fontSize:16,color: Colors.grey[500]),),
                                SizedBox(height: 15.0,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text('${trendings.ratings} of 5.0', style: TextStyle(fontSize:12,color: Colors.grey[500]),),
                                    _buildRatingStars(trendings.ratings),
                                    //Text('${featured.ratings} of 5', style: TextStyle(fontSize:16,color: Colors.grey[500]),)
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 5.0),
                        child: ClipRRect(
                          child: Image(
                            height: 110.0,
                            width: 150.0,
                            image: AssetImage(trendings.imageUrl),
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
