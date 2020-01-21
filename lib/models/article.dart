import 'source.dart';

class Article {
  final String slug;
  final String title;
  final String description;
  final String content;
  final String url;
  final String imageUrl;
  final String publishedAt;
  final Source source;

  Article(this.slug, this.title, this.description, this.content, this.url,
      this.imageUrl, this.publishedAt, this.source);

  static List<Article> fetchAll() {
    return [
      Article(
        'slug-1',
        'Title 1',
        'Description 1',
        'Content 1',
        'https://www.example1.com',
        '',
        'published1',
        null,
      ),
      Article(
        'slug-2',
        'Title 2',
        'Description 2',
        'Content 2',
        'https://www.example2.com',
        '',
        'published2',
        null,
      ),
      Article(
        'slug-3',
        'Title 3',
        'Description 3',
        'Content 3',
        'https://www.example3.com',
        '',
        'published3',
        null,
      ),
    ];
  }

  static Article fetchBySlug(String articleSlug) {
    List<Article> articles = Article.fetchAll();

    for (var i = 0; i < articles.length; i++) {
      if (articles[i].slug == articleSlug) {
        return articles[i];
      }
    }

    return null;
  }
}
