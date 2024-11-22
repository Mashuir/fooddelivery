import 'package:fooddelivery/consts/images.dart';

class CategoryModel {
  final String image, name;

  CategoryModel({required this.image, required this.name});
}

List<CategoryModel> myCategories = [
  CategoryModel(
    image: icRamen,
    name: 'Ramen',
  ),
  CategoryModel(
    image: icBurger,
    name: 'Burger',
  ),
  CategoryModel(
    image: icSalad,
    name: 'Salad',
  ),
  CategoryModel(
    image: icPancake,
    name: 'Waffle',
  ),
];