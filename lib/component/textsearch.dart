import 'package:dog_app/utils/color.dart';
import 'package:flutter/material.dart';

class Textsearch extends StatelessWidget {
  const Textsearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.only(left: 2),
      height: size.height * 0.09, // 9 % of the screen
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            child: Text(
              'Adopt a  Canine friend ',
              style: TextStyle(
                  color: ksecondarycolor,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            width: size.width * 0.02,
          ),

          //search bar
          const Expanded(
            child: TextField(
              decoration: InputDecoration(
                  fillColor: Colors.grey,
                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.blue,
                  ),
                  hintText: 'search breed',
                  focusedBorder: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey))),
            ),
          )
        ],
      ),
    );
  }
}
