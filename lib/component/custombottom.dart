import 'package:dog_app/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Custombuttonnav extends StatefulWidget {
  const Custombuttonnav({
    Key? key,
  }) : super(key: key);

  @override
  State<Custombuttonnav> createState() => _CustombuttonnavState();
}

class _CustombuttonnavState extends State<Custombuttonnav> {
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 15,
      ),
      child: GNav(
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
    );
  }
}
