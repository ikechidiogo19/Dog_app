import 'package:dog_app/component/shadowcon.dart';
import 'package:dog_app/utils/color.dart';
import 'package:dog_app/utils/dogmodel.dart';

import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final Dogmodel showdog;
  const DetailsPage({
    Key? key,
    required this.showdog,
  }) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: size.height,
            width: size.width,
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: size.height * 0.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: widget.showdog.dogcolor,
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                Align(
                    alignment: Alignment.topCenter,
                    child: Image(image: AssetImage(widget.showdog.dogimg))),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: double.infinity,
                    height: size.height * 0.6,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(35),
                            topRight: Radius.circular(35))),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  widget.showdog.name,
                                  style: TextStyle(
                                      color: kprimarycolor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 35),
                                ),

                                //icon button

                                Text(
                                  "Dalmation",
                                  style: TextStyle(
                                      color: kprimarycolor, fontSize: 35),
                                )
                              ],
                            ),
                            SizedBox(
                              height: size.height * 0.01,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: kprimarycolor,
                                  size: 35,
                                ),
                                Expanded(
                                  child: Text(
                                    widget.showdog.location,
                                    style: TextStyle(
                                        color: kprimarycolor, fontSize: 18),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: size.height * 0.01, //1% of the screen
                            ),
                            // neumorphism design
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Shadowcon(
                                  firstproprety: "Age",
                                  secondproperty: widget.showdog.age,
                                ),
                                Shadowcon(
                                  firstproprety: "Weight",
                                  secondproperty: widget.showdog.weight,
                                ),
                                Shadowcon(
                                  firstproprety: "Sex",
                                  secondproperty: widget.showdog.sex,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: size.height * 0.02, //2% of the screen
                            ),

                            Text(
                              "ABOUT",
                              style: TextStyle(
                                  color: kprimarycolor,
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: size.height * 0.02, //2% of the screen
                            ),
                            Text(
                              widget.showdog.about,
                              style: TextStyle(
                                color: kprimarycolor,
                                fontSize: 25,
                              ),
                            ),
                            SizedBox(
                              height: size.height * 0.04, //4% of the screen
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 45,
                                  width: size.width * 0.65,
                                  decoration: BoxDecoration(
                                      color: kprimarycolor,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: const Center(
                                    child: Text(
                                      "Adopt Me",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 45,
                                  width: 55,
                                  decoration: BoxDecoration(
                                      color: dailcolor,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: const Icon(
                                    Icons.phone,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: size.height * 0.02, //2% of the screen
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
