import 'package:flutter/material.dart';
import 'package:newscloud/Lists/businessapilist.dart';

class Businesspage extends StatelessWidget {
  const Businesspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: const Color(0xff252931),
      appBar: AppBar(
     backgroundColor: const Color(0xff202124),title: const Text('Business',
      style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Roboto',
                ),
                ),
                ),
        body: Column(
          children: [
            const SizedBox(height: 20,),
            Expanded(child: Businessnewsbuilder()),
          ],
        ),
    );
  }
  }