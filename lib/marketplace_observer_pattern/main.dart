import 'customer.dart';
import 'event_type.dart';
import 'offer.dart';
import 'online_market_place.dart';
import 'product.dart';

main() {
  // Customers
  final customer1 = Customer(name: 'Ahmed');

  final onlineMarketPlace = OnlineMarketPlace();

  // Subscribe
  onlineMarketPlace
    ..subscribe(EventType.NEW_OFFER, customer1)
    ..subscribe(EventType.NEW_PRODUCT, customer1);

  // Add products and offers
  onlineMarketPlace
    ..addProduct(Product(name: 'Laptop', price: 1200.00))
    ..addOffer(Offer(message: '10% off on all electronics'));
}
