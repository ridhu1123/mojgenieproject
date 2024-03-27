import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mojgenieproject/screens/loginscreen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Loginscreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Image.network(
            "https://cdn.dribbble.com/users/7326302/screenshots/15308057/media/a88b9f4a72e5630a70e8369213c19f5b.jpg?resize=1000x750&vertical=center",
            fit: BoxFit.fill,
            height: double.infinity,
            width: double.infinity,
          ),
        ),
      ),
    );
  }
}
