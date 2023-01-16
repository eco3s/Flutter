import 'dart:async';

import 'package:eco3s/screens/signinpage.dart';
import 'package:flutter/material.dart';
import 'package:transition/transition.dart';

class Landing extends StatefulWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
            const SignInPage(),
            fullscreenDialog: true,
          ),
        );
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0xff1EB79A),
          Color(0xff00E6A4),
          Color(0xff3FE48A),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Center(
              child: Hero(
                tag: "logo",
                child: Image(
                  image: AssetImage('assets/images/logo.png'),
                  height: 168,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
