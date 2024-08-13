import 'package:flutter/material.dart';
import 'package:newscloud/categories/news.dart';
import 'package:newscloud/classes/articlemodel.dart';
// ignore: unused_element
class Newlists extends StatelessWidget{
  const Newlists({super.key, required this.articles});
    final List<Articlemodel> articles;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: articles.length,
            itemBuilder: (context, index) {
              final article = articles[index];
              // Check for null values and skip rendering if necessary
              if (article.title == null ||
                  article.description == null ||
                  article.image == null) {
                return const SizedBox(); // Skip rendering if essential properties are null
              }

              return News(news: article);
            },
          );
  }
}
