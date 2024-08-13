import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Categorycard extends StatelessWidget {
  Categorycard({super.key , required this.img , required this.ctg});
  String? img;
  String? ctg;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      Container(
          height: 100,
          width: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(img!),
                fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(5),
          )),
      Text(
        ctg!,
        style: const TextStyle(
            fontFamily: 'Roboto',
            color: Colors.white,
            fontSize: 17
            ),
      ),
    ]);
  }
}
