import 'package:flutter/material.dart';
import 'package:newscloud/categories/categorycard.dart';
import 'package:newscloud/pages/businesspage.dart';
import 'package:newscloud/pages/entertainmentpage.dart';
import 'package:newscloud/pages/sportspage.dart';
import 'package:newscloud/pages/technologypage.dart';
class CategoriesListViewHorizontal extends StatelessWidget {
  const CategoriesListViewHorizontal({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(15.0),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          GestureDetector(
            child: Categorycard(img: 'assets/images/Sports.jpg', ctg: 'Sports'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const Sportspage();
              }));
            },
          ),
          const SizedBox(
            width: 10,
          ),
          GestureDetector(
            child: Categorycard(
                img: 'assets/images/Business.jpg', ctg: 'Business'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const Businesspage();
              }));
            },
          ),
          const SizedBox(
            width: 10,
          ),
          GestureDetector(
              child: Categorycard(
                  img: 'assets/images/Entertainment.jpg', ctg: 'Entertainment'),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const Entertainmentpage();
                }));
              }),
          const SizedBox(
            width: 10,
          ),
          GestureDetector(
            child: Categorycard(
                img: 'assets/images/Technology.jpg', ctg: 'Technology'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const Technologypage();
              }));
            },
          )
        ],
      ),
    );
  }
}
