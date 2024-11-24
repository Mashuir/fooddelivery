import 'package:fooddelivery/consts/images.dart';

class MyProductModel {
  final String image, name, category;
  final double price, rate, distance;

  MyProductModel({
    required this.image,
    required this.name,
    required this.price,
    required this.rate,
    required this.category,
    required this.distance,
  });
}

List<MyProductModel> myProductModel = [
  MyProductModel(
    image: icMisoRamen,
    name: 'Sapporo Miso',
    price: 3.9,
    rate: 5,
    distance: 150,
    category: "Ramen",
  ),
  MyProductModel(
    image: icKurumeRamen,
    name: 'Kurume Ramen',
    price: 4.3,
    rate: 4.9,
    distance: 600,
    category: "Ramen",
  ),
  MyProductModel(
    image: icKurumeRamen,
    name: 'Hakata Ramen',
    price: 3.9,
    distance: 400,
    rate: 4.8,
    category: "Ramen",
  ),
  MyProductModel(
    image: icShrimpRice,
    name: 'Shrimp Fried Rice',
    price: 4.9,
    distance: 800,
    rate: 4.5,
    category: "Ramen",
  ),
  MyProductModel(
    image: icFullsetRamen,
    name: 'Fullset Ramen',
    price: 5.9,
    distance: 400,
    rate: 4.7,
    category: "Ramen",
  ),
  //for burger
  MyProductModel(
    image: icGrilledBeefBurger,
    name: 'Grilled beef burger',
    price: 33.5,
    distance: 150,
    rate: 5.0,
    category: "Burger",
  ),
  MyProductModel(
    image: icChickenBurger,
    name: 'Fried Chicken Burger',
    price: 23.0,
    distance: 150,
    rate: 4.7,
    category: "Burger",
  ),
  MyProductModel(
    image: icCheeseBurger,
    name: 'Cheese Burger',
    price: 40.5,
    distance: 100,
    rate: 4.5,
    category: "Burger",
  ),
  MyProductModel(
    image: icBeefBurger,
    name: 'Beef-Burger',
    price: 18.5,
    distance: 200,
    rate: 5.0,
    category: "Burger",
  ),
  // for salad
  MyProductModel(
    image: icVegSalad,
    name: 'Veg Salad',
    price: 7.0,
    distance: 300,
    rate: 5.0,
    category: "Salad",
  ),
  MyProductModel(
    image: icMixSalad,
    name: 'Mix Salad',
    price: 10.0,
    distance: 350,
    rate: 4.8,
    category: "Salad",
  ),
  // for waffle
  MyProductModel(
    image: icBerryWaffle,
    name: 'Berry Bonanza Waffle',
    price: 10.0,
    distance: 500,
    rate: 4.5,
    category: "Waffle",
  ),
];
