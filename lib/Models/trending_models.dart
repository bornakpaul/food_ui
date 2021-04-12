import 'package:food_ui/Models/featured_models.dart';

class Trending{
  String imageUrl;
  String foodName;
  double foodPrice;
  double ratings;
  List<Featured> featuredFoods;

  Trending({this.imageUrl,this.foodName,this.foodPrice,this.ratings,this.featuredFoods});

}

List<Featured> featuredFoods  = [

  Featured(
    imageUrl: 'assets/salad.jpeg',
    foodName: 'Salad',
    foodPrice: 6.0,
    ratings: 4.0,
  ),
  Featured(
    imageUrl: 'assets/beefburger.jpeg',
    foodName: 'Burger',
    foodPrice: 8.0,
    ratings: 4.0,
  ),
  Featured(
    imageUrl: 'assets/cupcake.jpeg',
      foodName: 'Cupcake',
    foodPrice: 3.0,
    ratings: 4.0,
  ),
  Featured(
    imageUrl: 'assets/pizza.jpeg',
    foodName: 'Pizza',
    foodPrice: 15.0,
    ratings: 5,
  ),
];

List<Trending> trending = [

  Trending(
    imageUrl: 'assets/pasta.jpeg',
    foodName: 'Pasta',
    foodPrice: 8.0,
    ratings: 4.0,
    featuredFoods: featuredFoods,
  ),
  Trending(
    imageUrl: 'assets/burgerandbeer.jpeg',
    foodName: 'Burger',
    foodPrice: 8.0,
    ratings: 3.0,
    featuredFoods: featuredFoods,
  ),
  Trending(
    imageUrl: 'assets/chickenkebab.jpeg',
    foodName: 'Kebabs',
    foodPrice: 12.0,
    ratings: 4.0,
    featuredFoods: featuredFoods,
  ),
  Trending(
    imageUrl: 'assets/cupcake.jpeg',
    foodName: 'Cupcake',
    foodPrice: 4.0,
    ratings: 4.0,
    featuredFoods: featuredFoods,
  ),
  Trending(
    imageUrl: 'assets/cupcakes2.jpeg',
    foodName: 'Cupcake',
    foodPrice: 4.0,
    ratings: 4.0,
    featuredFoods: featuredFoods,
  ),
  Trending(
    imageUrl: 'assets/englishbreakfast.jpeg',
    foodName: 'Breakfast',
    foodPrice: 22.0,
    ratings: 3.0,
    featuredFoods: featuredFoods,
  ),
  Trending(
    imageUrl: 'assets/fruits.jpeg',
    foodName: 'Fruits',
    foodPrice: 10.0,
    ratings: 4.0,
    featuredFoods: featuredFoods,
  ),
  Trending(
    imageUrl: 'assets/meatpie.jpeg',
    foodName: 'Meatpie',
    foodPrice: 18.0,
    ratings: 4.0,
    featuredFoods: featuredFoods,
  ),
  Trending(
    imageUrl: 'assets/milkshakes.jpeg',
    foodName: 'Milkshakes',
    foodPrice: 6.0,
    ratings: 3.0,
    featuredFoods: featuredFoods,
  ),
  Trending(
    imageUrl: 'assets/pasta.jpeg',
    foodName: 'Pasta',
    foodPrice: 9.0,
    ratings: 4.0,
    featuredFoods: featuredFoods,
  ),
  Trending(
    imageUrl: 'assets/pizza.jpeg',
    foodName: 'Pizza',
    foodPrice: 18.0,
    ratings: 4.0,
    featuredFoods: featuredFoods,
  ),
  Trending(
    imageUrl: 'assets/pizza2.jpeg',
    foodName: 'Pizza',
    foodPrice: 12.0,
    ratings: 4.0,
    featuredFoods: featuredFoods,
  ),
];

