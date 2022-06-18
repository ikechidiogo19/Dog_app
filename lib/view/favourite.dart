import 'package:dog_app/utils/color.dart';
import 'package:flutter/material.dart';

class FavPage extends StatelessWidget {
  const FavPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "THIS IS THE FAVORITE PAGE",
          style: TextStyle(
              color: kprimarycolor, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
