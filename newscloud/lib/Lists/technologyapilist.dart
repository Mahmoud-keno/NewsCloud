import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newscloud/Lists/newlists.dart';
import 'package:newscloud/classes/articlemodel.dart';
import 'package:newscloud/services/news_service.dart';

class Tecnologylistsbuilder extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  Tecnologylistsbuilder({super.key});

  @override
  State<Tecnologylistsbuilder> createState() => _NewlistsbuilderState();
}

class _NewlistsbuilderState extends State<Tecnologylistsbuilder> {
  // ignore: prefer_typing_uninitialized_variables, non_constant_identifier_names
  var Future;
  @override
  void initState() {
    super.initState();
    Future = NewsService(dio: Dio()).technologynews();
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