import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newscloud/pages/homepage.dart';
import 'package:newscloud/services/news_service.dart';

void main() {
  NewsService(dio: Dio()).generalnews();
  runApp(const NewsCloud());
}

class NewsCloud extends StatelessWidget {
  const NewsCloud({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const Homepage();
  }
}
