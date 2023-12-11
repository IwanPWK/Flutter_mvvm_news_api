import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/news_article_model.dart';

class WebService {
  Future<List<NewsArticle>> fetchTopHeadlines() async {
    String url =
        "https://newsapi.org/v2/top-headlines?country=us&apiKey=5517050c18ad426bbe0b65f59a6cd52f";

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final result = jsonDecode(response.body);
      Iterable list = result["articles"];
      return list.map((article) => NewsArticle.fromJSON(article)).toList();
    } else {
      throw Exception("Failed to get top news");
    }
  }
}
