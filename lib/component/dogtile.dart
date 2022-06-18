import 'package:dog_app/utils/color.dart';
import 'package:dog_app/utils/dogmodel.dart';
import 'package:flutter/material.dart';

class Dogtile extends StatefulWidget {
  final Dogmodel dogs;
  const Dogtile({Key? key, required this.dogs}) : super(key: key);

  @override
  State<Dogtile> createState() => _DogtileState();
}

class _DogtileState extends State<Dogtile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 351,
      width: 300,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 3,
            child: Image(
              image: AssetImage(widget.dogs.dogimg),
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Text(
                  widget.dogs.name,
                  style: TextStyle(
                      color: kprimarycolor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      if (widget.dogs.isfavoured == false) {
                        widget.dogs.isfavoured = true;
                      } else {
                        widget.dogs.isfavoured = false;
                      }
                    });
                  },
                  icon: Icon(widget.dogs.isfavoured == false
                      ? Icons.favorite_border
                      : Icons.favorite),
                  color: widget.dogs.isfavoured == true ? kprimarycolor : null,
                ),
              ],
            ),
          )
        ],
      ),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: widget.dogs.dogcolor),
    );
  }
}
