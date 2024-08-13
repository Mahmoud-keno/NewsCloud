import 'package:dio/dio.dart';
import 'package:newscloud/classes/articlemodel.dart';

class NewsService {
  final Dio dio;
  NewsService({required this.dio});
  Future<List<Articlemodel>> generalnews() async {
    Response response = await dio.get(
        'https://newsapi.org/v2/everything?q=general&apiKey=f44832e4d4d04006b965db6f3e422f6a');
    dynamic jsondata = response.data;
    dynamic articles = jsondata['articles'];
    List<Articlemodel> articllist = [];
    for (var article in articles) {
      Articlemodel articlemodel = Articlemodel.fromJson(article);
      articllist.add(articlemodel);
    }
    return articllist;
  }

  Future<List<Articlemodel>> sportsnews() async {
    Response response = await dio.get(
        'https://newsapi.org/v2/everything?q=sports&apiKey=f44832e4d4d04006b965db6f3e422f6a');
    dynamic jsondata = response.data;
    dynamic artilces = jsondata['articles'];
    List<Articlemodel> sportsarticles = [];
    for (var article in artilces) {
 Articlemodel articlemodel = Articlemodel.fromJson(article);
      sportsarticles.add(articlemodel);
    }
    return sportsarticles;
  }

  Future<List<Articlemodel>> entertainmentnews() async {
    Response response = await dio.get(
        'https://newsapi.org/v2/everything?q=entertainment&apiKey=f44832e4d4d04006b965db6f3e422f6a');
    dynamic jsondata = response.data;
    dynamic artilces = jsondata['articles'];
    List<Articlemodel> entertainmentarticles = [];
    for (var article in artilces) {
 Articlemodel articlemodel = Articlemodel.fromJson(article);
      entertainmentarticles.add(articlemodel);
    }
    return entertainmentarticles;
  }

  Future<List<Articlemodel>> businessnews() async {
    Response response = await dio.get(
        'https://newsapi.org/v2/everything?q=business&apiKey=f44832e4d4d04006b965db6f3e422f6a');
    dynamic jsondata = response.data;
    dynamic artilces = jsondata['articles'];
    List<Articlemodel> entertainmentarticles = [];
    for (var article in artilces) {
 Articlemodel articlemodel = Articlemodel.fromJson(article);
      entertainmentarticles.add(articlemodel);
    }
    return entertainmentarticles;
  }

  Future<List<Articlemodel>> technologynews() async {
    Response response = await dio.get(
        'https://newsapi.org/v2/everything?q=technology&apiKey=f44832e4d4d04006b965db6f3e422f6a');
    dynamic jsondata = response.data;
    dynamic artilces = jsondata['articles'];
    List<Articlemodel> technologyarticles = [];
    for (var article in artilces) {
 Articlemodel articlemodel = Articlemodel.fromJson(article);
      technologyarticles.add(articlemodel);
    }
    return technologyarticles;
  }
}
