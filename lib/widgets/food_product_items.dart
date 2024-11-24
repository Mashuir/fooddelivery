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
                      children: [
                        Positioned(
                            child: Container(
                          width: 100,
                          height: 50,
                          decoration:
                              BoxDecoration(shape: BoxShape.circle, boxShadow: [
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
                  style: TextStyle(
                      color: kblack, fontSize: 19, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
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
                          color: kblack.withOpacity(0.5),
                          fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
