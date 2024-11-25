import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fooddelivery/consts/colors.dart';
import 'package:fooddelivery/consts/product_model.dart';

class FoodProductItems extends StatelessWidget {
  final MyProductModel myProductModel;

  const FoodProductItems({super.key, required this.myProductModel});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Container(
          height: 225,
          width: size.width / 2.4,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
        ),
        Container(
          height: 285,
          width: size.width / 2.4,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Transform.rotate(
                  angle: 10 * pi / 180,
                  child: SizedBox(
                    height: 160,
                    child: Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        Positioned(
                            bottom: 0,
                            child: Container(
                              width: 100,
                              height: 50,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black.withOpacity(0.3),
                                        spreadRadius: 10,
                                        blurRadius: 30),
                                  ]),
                            )),
                        Image.asset(
                          myProductModel.image,
                          height: 150,
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  myProductModel.name,
                  maxLines: 1,
                  style: const TextStyle(
                      color: kblack, fontSize: 12, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                starAndLocation(),
                const SizedBox(height: 20),
                Text(
                  "\$${(myProductModel.price).toStringAsFixed(2)}",
                  style: const TextStyle(
                      color: kblack, fontWeight: FontWeight.bold, fontSize: 23),
                )
              ],
            ),
          ),
        ),
        Positioned(
            bottom: 0,
            right: 0,
            child: GestureDetector(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: const BoxDecoration(
                    color: kblack,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10))),
                child: const Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ))
      ],
    );
  }

  Row starAndLocation() {
    return Row(
      children: [
        Row(
          children: [
            const Icon(
              Icons.star_rate_rounded,
              color: korange,
              size: 22,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              myProductModel.rate.toString(),
              style: TextStyle(color: Colors.black.withOpacity(.5)),
            )
          ],
        ),
        const SizedBox(
          width: 10,
        ),
        Row(
          children: [
            const Icon(
              Icons.location_on,
              color: kpink,
              size: 20,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              "${myProductModel.distance}m",
              style: TextStyle(
                  color: kblack.withOpacity(0.5), fontWeight: FontWeight.bold),
            )
          ],
        )
      ],
    );
  }
}
