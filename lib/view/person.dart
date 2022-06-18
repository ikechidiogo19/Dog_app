import 'package:dog_app/utils/color.dart';
import 'package:flutter/material.dart';

class Person extends StatelessWidget {
  const Person({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "THIS IS THE PROFILE PAGE",
          style: TextStyle(
              color: kprimarycolor, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
