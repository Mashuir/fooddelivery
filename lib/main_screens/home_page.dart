import 'package:flutter/material.dart';
import 'package:fooddelivery/consts/category_model.dart';
import 'package:fooddelivery/consts/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  const Expanded(
                      child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Your Location",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black54,
                                fontWeight: FontWeight.w600),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: kblack,
                            size: 20,
                          )
                        ],
                      ),
                      SizedBox(height: 6),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: korange,
                            size: 20,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Mashiur, Dhaka",
                            style: TextStyle(
                                fontSize: 16,
                                color: kblack,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      )
                    ],
                  )),
                  Row(
                    children: [
                      Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black12),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Icon(
                            Icons.search,
                            color: kblack,
                          )),
                      const SizedBox(
                        width: 10,
                      ),
                      Stack(
                        alignment: AlignmentDirectional.topCenter,
                        children: [
                          Container(
                              padding: const EdgeInsets.all(10),
                              margin: const EdgeInsets.symmetric(vertical: 15),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black12),
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Icon(
                                Icons.shopping_cart_outlined,
                                color: kblack,
                              )),
                          Positioned(
                              right: 0,
                              top: 0,
                              child: GestureDetector(
                                child: Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: const BoxDecoration(
                                      color: Colors.redAccent,
                                      shape: BoxShape.circle),
                                  child: const Text(
                                    "0",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                ),
                              ))
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 35),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                "Let's find the best food around you",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    letterSpacing: -.4,
                    color: kblack),
              ),
            ),
            const SizedBox(height: 35),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Find by category",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: kblack),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(color: korange),
                  )
                ],
              ),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  ...List.generate(
                      myCategories.length,
                      (index) => GestureDetector(
                            child: Container(
                              height: 105,
                              width: 80,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
