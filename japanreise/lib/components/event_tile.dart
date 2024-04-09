import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EventTile extends StatelessWidget {
  final String name;
  final String price;
  final String imgPath;
  final String rating;
  final void Function()? details;

  const EventTile(
      {super.key,
      required this.name,
      required this.price,
      required this.imgPath,
      required this.rating,
      required this.details});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25),
      padding: EdgeInsets.all(10),
      width: 200,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 61, 91, 212),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(onTap: details, child: Image.asset(imgPath)),
          Text(
            name,
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                price,
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              Row(
                children: [
                  Text(
                    rating,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Icon(
                    Icons.star,
                    color: Color.fromARGB(255, 224, 198, 6),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
