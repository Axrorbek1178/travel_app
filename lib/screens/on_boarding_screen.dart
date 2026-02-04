import 'dart:ui';

import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  List<OnBoardingModel> items = [
    OnBoardingModel(
      image: "assets/images/onboarding1.jpg",
      title: "Welcome to GlobeGlider",
      description:
          "Discover the World with GlobeGlider. Your passport to unforgettable adventures!",
    ),
    OnBoardingModel(
      image: "assets/images/onboarding2.jpg",
      title: "Explore New Destinations",
      description:
          "Plan trips, find the best deals, and create memorable itineraries with ease.",
    ),
    OnBoardingModel(
      image: "assets/images/onboarding3.jpg",
      title: " Tailored Just for You",
      description:
          "Our app customizes travel suggestions based on your interests and preferences.",
    ),
  ];

  int currentIndex = 0;
  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _controller,
        onPageChanged: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return Stack(
            children: [
              Positioned.fill(
                child: Image.asset(items[index].image, fit: BoxFit.cover),
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xff1C41A4).withAlpha(102),
                      Color(0xff001652).withAlpha(102),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 55, bottom: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/Frame.png"),
                        const SizedBox(width: 4),
                        const Text(
                          "GlobeGlider",
                          style: TextStyle(fontSize: 17, color: Colors.white),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 315,
                          height: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                              child: Container(
                                padding: const EdgeInsets.all(7),
                                color: Color(0xffFFF7F0).withAlpha(51),
                                child: Column(
                                  children: [
                                    const SizedBox(height: 17),
                                    Text(
                                      items[index].title,
                                      style: TextStyle(
                                        fontSize: 24,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                    const SizedBox(height: 24),
                                    Text(
                                      items[index].description,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        IconButton(
                          style: IconButton.styleFrom(
                            backgroundColor: Color(0xff163C9F),
                            fixedSize: Size(70, 70),
                          ),
                          onPressed: () {
                            _controller.nextPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeInOut,
                            );
                          },
                          icon: Icon(Icons.arrow_forward, color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class OnBoardingModel {
  final String image;
  final String title;
  final String description;

  OnBoardingModel({
    required this.image,
    required this.title,
    required this.description,
  });
}
