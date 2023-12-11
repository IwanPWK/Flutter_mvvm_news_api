import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/viewmodels/news_article_list_viewmodel.dart';
import 'pages/news_list.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => NewsArticleListViewModel(),
      child: MaterialApp(
        title: "Fresh News",
        home: NewsList(),
      ),
    );
  }
}
