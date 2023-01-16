
import 'package:flutter/material.dart';

class Landing extends StatelessWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xff1EB79A), Color(0xff00E6A4), Color(0xff3FE48A),],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter
              )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Center(
                child: Image(
                  image: AssetImage('assets/images/logo.png'),
                  height: 168,
                ),
              ),
            ],
          ),
        );
  }
}
