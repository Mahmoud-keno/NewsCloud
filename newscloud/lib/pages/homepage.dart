import 'package:flutter/material.dart';
import 'package:newscloud/Lists/newsapilist.dart';
import 'package:newscloud/widgts/categories_list_view_horizontal.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff252931),
        appBar: AppBar(
          backgroundColor: const Color(0xff202124),
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'NEWS',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Roboto',
                ),
              ),
              Text(
                'CLOUD',
                style: TextStyle(
                  color: Colors.blue,
                  fontFamily: 'Roboto',
                ),
              ),
            ],
          ),
        ),
        body: const Column(
          children: [
            CategoriesListViewHorizontal(),
            SizedBox(height: 10),  
            Expanded(child: Newlistsbuilder()),
          ],
        ),
      ),
    );
  }
}
