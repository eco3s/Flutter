import 'dart:async';

import 'package:eco3s/screens/landing.dart';
import 'package:eco3s/screens/signuppage.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  onCLick() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: Color(0xff1EB79A),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Landing(),
                    fullscreenDialog: true,
                  ),
                );
              },
              child: const Hero(
                tag: "logo",
                child: Image(
                  image: AssetImage('assets/images/logo.png'),
                  height: 121,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              child: Container(
                height: 650,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: Color(0xffF3F3F3),
                ),
                child: Column(
                  children: [
                    const Expanded(
                      flex: 1,
                      child: Center(
                        child: Hero(
                          tag: "eco_title",
                          child: Text(
                            '????????? ?????????',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 26,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          inputText('?????????'),
                          const SizedBox(
                            height: 20,
                          ),
                          inputText('????????????'),
                          const SizedBox(
                            height: 30,
                          ),
                          Container(
                              width: 280,
                              height: 50,
                              decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: [
                                    Color(0xff1EB79A),
                                    Color(0xff00E6A4),
                                    Color(0xff3FE48A),
                                  ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.topRight),
                              borderRadius: BorderRadius.all(Radius.circular(30))),
                              child: TextButton(
                                onPressed: onCLick,
                                child: const Text('?????????',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                                ),),
                              )
                          ),
                          const SizedBox(height: 20,),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => const SignUpPage()),
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text('???????????????????',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black
                                ),), Text('????????????',
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black
                                    ),),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  SizedBox inputText(String text) {
    return SizedBox(
      width: 280,
      height: 50,
      child: TextField(
        textAlign: TextAlign.start,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(10),
          hintText: text,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            borderSide: BorderSide(width: 2, color: Color(0xffCDCDCD)),
          ),
        ),
        style: const TextStyle(
          fontSize: 12,
        ),
      ),
    );
  }
}
