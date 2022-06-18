import 'package:dog_app/view/firstpage.dart';
import 'package:dog_app/view/homepage.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dog app',
      theme: ThemeData(
          textTheme: const TextTheme(), primaryColor: const Color(0xff2b4d68)),
      home: const Homepage(),
    );
  }
}
