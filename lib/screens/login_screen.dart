import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/screens/on_boarding_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool onoff = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const SizedBox(height: 82),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/Group.png"),
                const Text(
                  "GlobeGlider",
                  style: TextStyle(fontSize: 17, color: Color(0xff163C9F)),
                ),
              ],
            ),
            const SizedBox(height: 64),
            const Text(
              "Welcome Back!",
              style: TextStyle(
                fontSize: 24,
                color: Color(0xff2E3E5C),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "Please enter your account here",
              style: TextStyle(
                fontSize: 14,
                color: Color(0xff8189B0),
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 40),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              width: MediaQuery.of(context).size.width,
              height: 56,
              decoration: BoxDecoration(
                color: const Color(0xffF1F6FB),
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.symmetric(vertical: 20),
                  hintText: "Email or phone number",
                  hintStyle: TextStyle(
                    color: const Color(0xff8189B0),
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: SvgPicture.asset("assets/icons/Group.svg"),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              width: MediaQuery.of(context).size.width,
              height: 56,
              decoration: BoxDecoration(
                color: const Color(0xffF1F6FB),
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextField(
                obscureText: onoff,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.symmetric(vertical: 20),
                  hintText: "Password",
                  hintStyle: TextStyle(
                    color: const Color(0xff8189B0),
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),

                  prefixIcon: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: SvgPicture.asset("assets/icons/Lock.svg"),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        onoff = !onoff;
                      });
                    },
                    icon: onoff
                        ? SvgPicture.asset("assets/icons/Show.svg")
                        : SvgPicture.asset("assets/icons/eye_off.svg"),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "Forgot Password?",
                  style: TextStyle(
                    color: Color(0xff163C9F),
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 44,
              decoration: BoxDecoration(
                color: const Color(0xff163C9F),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OnBoardingScreen(),
                    ),
                  );
                },
                child: const Text(
                  "Login In",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 52),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don’t have any account?",
                  style: TextStyle(
                    color: const Color(0xff2E3E5C),
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(width: 8),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      color: const Color(0xff163C9F),
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
