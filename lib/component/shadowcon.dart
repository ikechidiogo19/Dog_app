import 'package:dog_app/utils/color.dart';
import 'package:flutter/material.dart';

class Shadowcon extends StatelessWidget {
  String firstproprety;
  String secondproperty;
  Shadowcon(
      {Key? key, required this.firstproprety, required this.secondproperty})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            firstproprety,
            style: TextStyle(color: kprimarycolor, fontSize: 15),
          ),
          Text(
            secondproperty,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: kprimarycolor,
                fontSize: 20),
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          // bottom right
          BoxShadow(
            color: Colors.grey.shade400,
            offset: const Offset(5, 5),
            blurRadius: 5,
          ),
          //top left
          BoxShadow(
            blurRadius: 15,
            color: Colors.grey.shade300,
            offset: const Offset(-5, -5),
          ),
        ],
      ),
    );
  }
}
