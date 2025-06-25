import 'blog.dart';
import 'blog_event_type.dart';
import 'blog_post.dart';
import 'news_letter.dart';
import 'subscriber.dart';
import 'user.dart';

main() {
  // Create the blog
  final Blog blog = Blog();

  // Create users [subscribers]
  final Subscriber u1 = User(name: 'Alice');
  final Subscriber u2 = User(name: 'Youssef');
  final Subscriber u3 = User(name: 'Omnia');

  // Create blog posts
  final BlogPost blogPost1 = BlogPost(body: 'First blog post');

  // Create news letters
  final NewsLetter newsLetter1 = NewsLetter(body: 'First news letter');

  blog
    ..subscribe(u1, BlogEventType.NEWS_LETTERS)
    ..subscribe(u2, BlogEventType.BLOG_POSTS)
    ..subscribe(u3, BlogEventType.NEWS_LETTERS)
    ..subscribe(u3, BlogEventType.BLOG_POSTS)
    ..addBlogPost(blogPost1)
    ..addNewsLetter(newsLetter1);
}
