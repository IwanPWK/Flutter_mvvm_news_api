import 'package:flutter/material.dart';

import '../models/news_article_model.dart';
import '../services/web_service.dart';
import 'news_article_viewmodel.dart';

class NewsArticleListViewModel extends ChangeNotifier {
  List<NewsArticleViewModel> articles = <NewsArticleViewModel>[];

  Future<void> populateTopHeadlines() async {
    List<NewsArticle> newsArticles = await WebService().fetchTopHeadlines();
    articles = newsArticles
        .map((article) => NewsArticleViewModel(article: article))
        .where((article) => article.imageURL != null)
        .toList();
    notifyListeners();
  }
}
