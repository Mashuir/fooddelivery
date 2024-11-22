import 'package:flutter/material.dart';
import 'package:fooddelivery/consts/bottom_icon_model.dart';
import 'package:fooddelivery/consts/colors.dart';
import 'package:fooddelivery/main_screens/explore_page.dart';
import 'package:fooddelivery/main_screens/home_page.dart';
import 'package:fooddelivery/main_screens/message_page.dart';
import 'package:fooddelivery/main_screens/profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  final List selectedPage = [
    const HomePage(),
    const MessagePage(),
    const ExplorePage(),
    const ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbgColor,
      bottomNavigationBar: Container(
        height: 80,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ...List.generate(
                bottomIcons.length,
                (index) => GestureDetector(
                      onTap: () {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 12),
                        child: Column(
                          children: [
                            Icon(
                              currentIndex == index
                                  ? bottomIcons[index].selected
                                  : bottomIcons[index].unselected,
                              color: kblack,
                            ),
                            const SizedBox(height: 10),
                            Container(
                              decoration: const BoxDecoration(
                                  color: kblack, shape: BoxShape.circle),
                              width: currentIndex == index ? 7 : 0,
                              height: currentIndex == index ? 7 : 0,
                            )
                          ],
                        ),
                      ),
                    ))
          ],
        ),
      ),
      body: selectedPage[currentIndex],
    );
  }
}
