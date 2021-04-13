import 'package:flutter/material.dart';
import 'package:food_ui/Models/trending_models.dart';

class trendingfullpageitemcontent extends StatefulWidget {
  @override
  _trendingfullpageitemcontentState createState() => _trendingfullpageitemcontentState();
}

class _trendingfullpageitemcontentState extends State<trendingfullpageitemcontent> {

  _buildRatingStars(double ratings){
    String stars = '';
    for (int i = 0; i < ratings; i++){
      stars += '⭐️ ';
    }
    return Text(stars,style: TextStyle(fontSize: 12),);
  }

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return GridView.builder(
      itemCount: trending.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: (orientation == Orientation.portrait) ? 2 : 3),
      itemBuilder: (BuildContext, int index){
        Trending trendings = trending[index];

        return Card(
          margin: EdgeInsets.all(5.0),
          elevation: 3,
            child: Stack(
                alignment: Alignment.topCenter,
                children: <Widget>[
                  Positioned(
                    bottom: 1.0,
                    child: Container(
                      height: 100.0,
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('${trendings.foodName}',style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.w600,),),
                                Text('\$${trendings.foodPrice}', style: TextStyle(fontSize:14,color: Colors.red),),
                                //Text('${featured.ratings} of 5', style: TextStyle(fontSize:16,color: Colors.grey[500]),)
                              ],
                            ),
                            SizedBox(height: 0.0,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                _buildRatingStars(trendings.ratings),
                                Text('${trendings.ratings} of 5.0', style: TextStyle(fontSize:12,color: Colors.grey[500]),),
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
                        height: 100.0,
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
      },
    );
  }
}
