import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newscloud/Lists/newlists.dart';
import 'package:newscloud/classes/articlemodel.dart';
import 'package:newscloud/services/news_service.dart';

class Businessnewsbuilder extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  Businessnewsbuilder({super.key});

  @override
  State<Businessnewsbuilder> createState() => _NewlistsbuilderState();
}

class _NewlistsbuilderState extends State<Businessnewsbuilder> {
  // ignore: prefer_typing_uninitialized_variables, non_constant_identifier_names
  var Future;
  @override
  void initState() {
    super.initState();
    Future = NewsService(dio: Dio()).businessnews();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Articlemodel>>(
        future: Future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Newlists(articles: snapshot.data ?? []);
          } else if (snapshot.hasError) {
            return const Text('Error, Try again');
          }
          else{
            return const Center(child: CircularProgressIndicator());
          }
        });
  }
}