import 'package:eco3s/screens/landing.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  bool data = await fetchData();
  print(data);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Landing()
    );
  }
}

Future<bool> fetchData() async {
  bool data = false;

  // Change to API call
  await Future.delayed(const Duration(seconds: 1), () {
    data = true;
  });

  return data;
}