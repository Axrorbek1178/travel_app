import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
            Container(
              width: MediaQuery.of(context).size.width,
              height: 56,
              decoration: BoxDecoration(
                color: const Color(0xffF1F6FB),
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Email or phone number",
                  prefixIcon: const Icon(
                    Icons.email_outlined,
                    color: Color(0xff8189B0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
