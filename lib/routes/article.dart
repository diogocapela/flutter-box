import 'package:flutter/material.dart';
import 'package:flutter_box/routes/articles.dart';

import '../models/article.dart';

import '../widgets/image_box.dart';
import '../widgets/text_box.dart';

class ArticlePage extends StatelessWidget {
  final String _articleSlug;

  ArticlePage(this._articleSlug);

  @override
  Widget build(BuildContext context) {
    // TODO: This should not be on the build method as it is called multiple times during the render!
    final article = Article.fetchBySlug(_articleSlug);

    return Scaffold(
      appBar: AppBar(
        title: Text(article.title),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // ImageBox('assets/images/tokyo.jpg'),
            ImageBox('assets/images/tokyo.jpg'),
            TextBox(article.title, article.description, Colors.red)
          ]),
    );
  }
}
