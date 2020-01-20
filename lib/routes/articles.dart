import 'package:flutter/material.dart';

import '../models/article.dart';

import '../widgets/image_box.dart';
import '../widgets/text_box.dart';

class ArticlesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: This should not be on the build method as it is called multiple times during the render!
    final articles = Article.fetchAll();

    return Scaffold(
      appBar: AppBar(
        title: Text('Articles'),
      ),
      body: ListView(
        children: articles.map((a) => GestureDetector(
          child: TextBox(a.title, a.description, Colors.red),
          onTap: () => _onArticleTap(context, a.slug),
        )).toList()
      )
    );
  }

  _onArticleTap(BuildContext context, String articleSlug) {
    Navigator.pushNamed(context, '/article', arguments: {
      'slug': articleSlug,
    });
  }
}