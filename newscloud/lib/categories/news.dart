import 'package:flutter/material.dart';
import 'package:newscloud/classes/articlemodel.dart';
// ignore: must_be_immutable
class News extends StatelessWidget {
  News({super.key , required this.news });
  Articlemodel news;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image(
            image: news.image != null? NetworkImage(news.image!): const NetworkImage(''),
            width: 380,
            fit: BoxFit.cover,
            errorBuilder: (BuildContext context, Object exception,
                StackTrace? stackTrace) {
              return const Center(
                  child: Text(
                'Failed to load image',
                style: TextStyle(color: Colors.white),
              ));
            },
          ),
        ),
        const SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: news.title != null ? Text(
            news.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                fontSize: 20, fontFamily: 'Roboto', color: Color(0xffFFFFFF)),
          ): const Text('Server is over')
          ,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 1),
          child: news.title != null?  Text(
            news.description!,
            style: const TextStyle(
                color: Color(0xffDEDFDF), fontSize: 15, fontFamily: 'Roboto'),
          ) : const Text('Server is over')
          ,
        ),
        const SizedBox(
          height: 5,
        )
      ],
    );
  }
}
