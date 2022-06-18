import 'package:dog_app/component/gridtile.dart';
import 'package:dog_app/component/textsearch.dart';
import 'package:dog_app/utils/color.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
          color: kprimarycolor,
        ),
        actions: [
          IconButton(
              color: kprimarycolor,
              onPressed: () {},
              icon: const Icon(Icons.notifications_active))
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * 0.05, //5% of the screen
              ),
              // A Text and a search bar
              const Textsearch(),
              SizedBox(
                height: size.height * 0.05, //5% of the screen
              ),

              //Gridview
              const Gridtile()
            ],
          ),
        ),
      ),
      // buttomnavbar
      //bottomNavigationBar: const Custombuttonnav(),
    );
  }
}
