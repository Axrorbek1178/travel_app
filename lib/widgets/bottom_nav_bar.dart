import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/screens/home_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int index = 2;
  List pages = [
    Center(child: Text("Notifications Page")),
    Center(child: Text("Profile Page")),
    HomeScreen(),
    Center(child: Text("Activities Page")),
    Center(child: Text("Discovery Page")),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        height: 100,
        decoration: BoxDecoration(
          color: Color(0xffFAFCFF),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(20),
              blurRadius: 14,
              offset: Offset(2, -4),
            ),
          ],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            onTap: (value) {
              setState(() {
                index = value;
              });
            },
            currentIndex: index,
            items: [
              BottomNavigationBarItem(
                icon: Column(
                  children: [
                    SvgPicture.asset(
                      "assets/icons/Notification.svg",
                      color: index == 0 ? Color(0xff163C9F) : Colors.grey,
                    ),
                    const SizedBox(height: 4),
                    if (index == 0)
                      Container(
                        width: 6,
                        height: 6,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color(0xff163C9F),
                        ),
                      ),
                  ],
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Column(
                  children: [
                    SvgPicture.asset(
                      "assets/icons/Profile.svg",
                      color: index == 1 ? Color(0xff163C9F) : Colors.grey,
                    ),
                    const SizedBox(height: 2),
                    if (index == 1)
                      Container(
                        width: 6,
                        height: 6,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color(0xff163C9F),
                        ),
                      ),
                  ],
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Column(
                  children: [
                    SvgPicture.asset(
                      "assets/icons/Activity.svg",
                      color: index == 2 ? Color(0xff163C9F) : Colors.grey,
                    ),
                    const SizedBox(height: 5),

                    if (index == 2)
                      Container(
                        width: 6,
                        height: 6,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color(0xff163C9F),
                        ),
                      ),
                  ],
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Column(
                  children: [
                    SvgPicture.asset(
                      "assets/icons/Activity.svg",
                      color: index == 3 ? Color(0xff163C9F) : Colors.grey,
                    ),
                    const SizedBox(height: 5),

                    if (index == 3)
                      Container(
                        width: 6,
                        height: 6,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color(0xff163C9F),
                        ),
                      ),
                  ],
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Column(
                  children: [
                    SvgPicture.asset(
                      "assets/icons/Discovery.svg",
                      color: index == 4 ? Color(0xff163C9F) : Colors.grey,
                    ),
                    const SizedBox(height: 2),

                    if (index == 4)
                      Container(
                        width: 6,
                        height: 6,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color(0xff163C9F),
                        ),
                      ),
                  ],
                ),
                label: "",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
