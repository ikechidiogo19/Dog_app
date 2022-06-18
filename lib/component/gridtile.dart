import 'package:dog_app/component/dogtile.dart';
import 'package:dog_app/utils/dogmodel.dart';
import 'package:dog_app/view/details.dart';
import 'package:flutter/material.dart';

class Gridtile extends StatelessWidget {
  const Gridtile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        scrollDirection: Axis.vertical,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: mydogs.length,
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 15, mainAxisSpacing: 15, crossAxisCount: 2),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailsPage(
                            showdog: mydogs[index],
                          )));
            },
            child: Dogtile(
              dogs: mydogs[index],
            ),
          );
        });
  }
}
