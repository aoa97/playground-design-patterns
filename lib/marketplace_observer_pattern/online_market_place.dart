import 'event_type.dart';
import 'offer.dart';
import 'product.dart';
import 'subscriber.dart';

class OnlineMarketPlace {
  final List<Product> products = [];
  final List<Offer> offers = [];
  final Map<EventType, List<ISubscriber>> subscribers = {};

  addProduct(Product product) {
    products.add(product);
    notifySubscribers(EventType.NEW_PRODUCT, 'New Product is added: ${product.name}');
  }

  addOffer(Offer offer) {
    offers.add(offer);
    notifySubscribers(EventType.NEW_OFFER, 'New Offer is added: ${offer.message}');
  }

  subscribe(EventType eventType, ISubscriber subscriber) {
    if (!subscribers.containsKey(eventType)) {
      subscribers[eventType] = [];
    }
    subscribers[eventType]!.add(subscriber);
  }

  unsubscribe(EventType eventType, ISubscriber subscriber) {
    if (subscribers.containsKey(eventType)) {
      subscribers[eventType]!.remove(subscriber);
      if (subscribers[eventType]!.isEmpty) {
        subscribers.remove(eventType);
      }
    }
  }

  notifySubscribers(EventType eventType, String message) {
    if (subscribers.containsKey(eventType)) {
      for (var subscriber in subscribers[eventType]!) {
        subscriber.notify(message);
      }
    }
  }
}
