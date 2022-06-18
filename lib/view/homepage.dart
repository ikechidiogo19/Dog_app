import 'package:dog_app/utils/color.dart';
import 'package:dog_app/view/favourite.dart';
import 'package:dog_app/view/firstpage.dart';
import 'package:dog_app/view/mail.dart';
import 'package:dog_app/view/person.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int selectedindex = 0;

  static const List<Widget> pages = [
    FirstPage(),
    MailPage(),
    FavPage(),
    Person()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffffffff),
        body: //pages.elementAt(selectedindex),
            pages[selectedindex],

        // buttomnavbar
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 15,
          ),
          child: GNav(
            onTabChange: (index) {
              setState(() {
                selectedindex = index;
              });

              //print(selectedindex);
            },
            tabBackgroundColor: kprimarycolor,
            color: rubycolor,
            iconSize: 25,
            padding: const EdgeInsets.all(10),
            gap: 8.0,
            activeColor: Colors.white,
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                text: 'Mail',
                icon: Icons.mail,
              ),
              GButton(
                text: 'Likes',
                icon: Icons.favorite,
              ),
              GButton(
                text: 'Profile',
                icon: Icons.person,
              ),
            ],
          ),
        ));
  }
}
