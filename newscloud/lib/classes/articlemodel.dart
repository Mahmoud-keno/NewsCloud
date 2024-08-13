class Articlemodel {
  final String? image;
  final String? title;
  final String? description;
  final String? url;

  Articlemodel( 
      {required this.image, required this.title, required this.description , required this.url});
  factory Articlemodel.fromJson(json) {
    return Articlemodel(image: json['urlToImage'], title: json['title'], description: json['description'], url: json['url']);
  }
}
