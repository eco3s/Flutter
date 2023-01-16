import 'dart:async';

import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        color: Color(0xff1EB79A),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Hero(
            tag: "logo",
            child: Image(
              image: AssetImage('assets/images/logo.png'),
              height: 121,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const SizedBox(height: 20,),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 650,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              color: Color(0xffF3F3F3),
            ),
          ),
        ],
      ),
    );
  }
}
