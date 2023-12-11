class NewsArticle {
  String? title;
   String? description;
  String? urlToImage;
  String? url;

  NewsArticle(
      {this.title,  this.description, this.urlToImage, this.url});

  factory NewsArticle.fromJSON(Map<String, dynamic> json) {
    return NewsArticle(
        title: json["title"],
        description: json["description"],
        urlToImage: json["urlToImage"],
        url: json["url"]);
  }
}
