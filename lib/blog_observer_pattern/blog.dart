import 'blog_event_type.dart';
import 'blog_post.dart';
import 'news_letter.dart';
import 'subscriber.dart';

class Blog {
  final Map<BlogEventType, List<Subscriber>> _subscribers = {};
  final List<BlogPost> _posts = [];
  final List<NewsLetter> _newsLetters = [];

  Blog() {
    init();
  }

  init() {
    _subscribers[BlogEventType.BLOG_POSTS] = [];
    _subscribers[BlogEventType.NEWS_LETTERS] = [];
  }

  addBlogPost(BlogPost post) {
    _posts.add(post);
    notifySubscribers(BlogEventType.BLOG_POSTS, post.body);
  }

  addNewsLetter(NewsLetter newsLetter) {
    _newsLetters.add(newsLetter);
    notifySubscribers(BlogEventType.NEWS_LETTERS, newsLetter.body);
  }

  subscribe(Subscriber subscriber, BlogEventType eventType) {
    if (!_subscribers[eventType]!.contains(subscriber)) {
      _subscribers[eventType]!.add(subscriber);
    }
  }

  unSubscribe(Subscriber subscriber, BlogEventType eventType) {
    _subscribers[eventType]!.remove(subscriber);
  }

  notifySubscribers(BlogEventType eventType, String message) {
    _subscribers[eventType]!.forEach((subscriber) => subscriber.notify(message));
  }
}
