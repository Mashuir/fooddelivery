import 'package:flutter/material.dart';
import 'package:fooddelivery/consts/colors.dart';
import 'consts/onboard_model.dart';

class AppOnBoardPage extends StatefulWidget {
  const AppOnBoardPage({super.key});

  @override
  State<AppOnBoardPage> createState() => _AppOnBoardPageState();
}

class _AppOnBoardPageState extends State<AppOnBoardPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kblack,
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          PageView.builder(
              onPageChanged: (value) {},
              itemCount: onboards.length,
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    Positioned(
                        top: -70,
                        left: 0,
                        right: 0,
                        child: Image.asset(onboards[index].image,
                            width: 600, height: 600, fit: BoxFit.contain)),
                    Positioned(
                        top: MediaQuery.of(context).size.height / 1.8,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                onboards[index].text1,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 50,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Text(
                                onboards[index].text2,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        )),
                  ],
                );
              }),
          Positioned(
              child: Row(
            children: [
              ...List.generate(
                  onboards.length,
                  (index) => AnimatedContainer(
                        duration: const Duration(milliseconds: 250),
                        height: 5,
                        width: 50,
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                            color: currentIndex == index
                                ? Colors.white
                                : Colors.white.withOpacity(0.5), borderRadius: BorderRadius.circular(15)),
                        
                      ))
            ],
          ))
        ],
      ),
    );
  }
}