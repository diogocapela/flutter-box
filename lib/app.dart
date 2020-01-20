import 'package:flutter/material.dart';

import 'styles.dart';

import 'routes/articles.dart';
import 'routes/article.dart';

const ArticlesRoute = '/';
const ArticleRoute = '/article';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter BOX',
      onGenerateRoute: _routes(),
      theme: _theme(),
    );
  }

  RouteFactory _routes() {
    return (settings) {
      final Map<String, dynamic> arguments = settings.arguments;
      Widget screen;
      switch(settings.name) {
        case '/':
          screen = ArticlesPage();
          break;
        case '/article':
          screen = ArticlePage(arguments['slug']);
          break;
        default:
          return null;
      }

      return MaterialPageRoute(builder: (context) => screen);
    };
  }

  ThemeData _theme() {
    return ThemeData(
        appBarTheme: AppBarTheme(
          textTheme: TextTheme(
            title: AppBarTitleStyle
          ),
          color: Colors.black
        ),
        textTheme: TextTheme(title: TitleTextStyle, body1: Body1TextStyle),
        primarySwatch: Colors.green,
      );
  }
}
