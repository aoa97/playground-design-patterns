main() {
  final marketPlace = MarketPlace();

  // Create users
  final user1 = User(name: 'Ahmed', isSubscribedToProducts: true, isSubscribedToOffers: false);
  final user2 = User(name: 'Fatima', isSubscribedToProducts: false, isSubscribedToOffers: true);
  final user3 = User(name: 'Omar', isSubscribedToProducts: true, isSubscribedToOffers: true);
  final user4 = User(name: 'Sara', isSubscribedToProducts: false, isSubscribedToOffers: false);

  // Create products & offers
  final product1 = Product(name: 'Laptop');
  final offer1 = Offer(message: '20% off on all electronics');

  marketPlace
    ..addUsers([user1, user2, user3, user4])
    ..addProduct(product1)
    ..addOffer(offer1);
}

class MarketPlace {
  final List<User> users = [];
  final List<Product> products = [];
  final List<Offer> offers = [];

  addUsers(List<User> user) {
    users.addAll(user);
  }

  addProduct(Product product) {
    products.add(product);
    notifyUsersAboutProduct(product);
  }

  addOffer(Offer offer) {
    offers.add(offer);
    notifyUsersAboutOffer(offer);
  }

  notifyUsersAboutProduct(Product product) {
    users.forEach((user) {
      if (user.isSubscribedToProducts) {
        print('${user.name} has been notified about the new product: ${product.name}');
      }
    });
  }

  notifyUsersAboutOffer(Offer offer) {
    users.forEach((user) {
      if (user.isSubscribedToOffers) {
        print('${user.name} has been notified about the new offer: ${offer.message}');
      }
    });
  }
}

class User {
  final String name;
  final bool isSubscribedToProducts;
  final bool isSubscribedToOffers;

  User({
    required this.name,
    required this.isSubscribedToProducts,
    required this.isSubscribedToOffers,
  });
}

class Product {
  final String name;
  Product({required this.name});
}

class Offer {
  final String message;
  Offer({required this.message});
}
