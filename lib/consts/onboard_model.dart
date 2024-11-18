import 'package:fooddelivery/consts/images.dart';

class OnBoard {
  final String image, text1, text2;

  OnBoard({
    required this.image,
    required this.text1,
    required this.text2,
  });
}

List<OnBoard> onboards = [
  OnBoard(
    image: icOnBoard1,
    text1: 'Grab your\nDelicious food !',
    text2: 'Delivery food in your phone',
  ),
  OnBoard(
    image: icOnBoard2,
    text1: 'Grab your\nDelicious food !',
    text2: 'Delivery food in your phone',
  ),
  OnBoard(
    image: icOnBoard3,
    text1: 'Grab your\nDelicious food !',
    text2: 'Delivery food in your phone',
  ),
];