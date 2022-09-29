import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Grid extends StatelessWidget {
  double height;
  double width;
  Color color;
  String test1;
  String test2;
  String num;
  Grid(
      {Key? key,
      required this.height,
      required this.width,
      required this.color,
      required this.test1,
      required this.test2,
      required this.num})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4, top: 4),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Row(
              //crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      test1,
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      test2,
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
                const Spacer(),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    num,
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
