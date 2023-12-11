import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodels/news_article_list_viewmodel.dart';

class NewsList extends StatefulWidget {
  @override
  _NewsListState createState() => _NewsListState();
}

class _NewsListState extends State<NewsList> {
  @override
  void initState() {
    super.initState();
    // make sure listen: false
    Provider.of<NewsArticleListViewModel>(context, listen: false)
        .populateTopHeadlines();
  }

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<NewsArticleListViewModel>(context);

    return Scaffold(
        appBar: AppBar(title: const Text("Top News")),
        body: ListView.builder(
          itemCount: vm.articles.length,
          itemBuilder: (context, index) {
            final article = vm.articles[index];

            return ListTile(
              leading: Container(
                  width: 100,
                  height: 100,
                  child: Image.network(article.imageURL!)),
              title: Text(article.title!),
            );
          },
        ));
  }
}
