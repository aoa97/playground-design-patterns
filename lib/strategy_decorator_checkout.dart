main() {
  final user = User(name: 'Alice', type: UserType.regular);
  final order = Order(totalAmount: 100.0, items: ['item1', 'item2']);

  final checkout = Checkout(
    user: user,
    order: order,
    discountStrategy: ConditionalDiscountStrategy(
      innerStrategy: PercentageDiscountStrategy(percentage: 10.0),
    ),
  );

  checkout.placeOrder();
}

class Checkout {
  final User user;
  final Order order;
  final DiscountStrategy discountStrategy;

  Checkout({
    required this.user,
    required this.order,
    required this.discountStrategy,
  });

  void placeOrder() {
    _validateOrder();

    final discount = discountStrategy.calcDiscount(user: user, order: order);

    final finalPrice = _calculateFinalPrice(discount);

    print('Final price: $finalPrice');

    _saveOrder();
  }

  void _validateOrder() {
    print('Validating order..');
  }

  double _calculateFinalPrice(double discount) {
    final price = order.totalAmount - discount;
    return price < 0 ? 0 : price;
  }

  void _saveOrder() {
    print('Saving order..');
  }
}

class Order {
  final double totalAmount;
  final List<String> items;

  Order({required this.totalAmount, required this.items});
}

class User {
  final String name;
  final UserType type;

  User({required this.name, required this.type});
}

enum UserType { regular, premium, admin }

/// ================= Strategy =================

/// ================= Concrete Strategies =================

abstract class DiscountStrategy {
  double calcDiscount({required User user, required Order order});
}

class FixedDiscountStrategy implements DiscountStrategy {
  final double amount;

  FixedDiscountStrategy({required this.amount});

  @override
  double calcDiscount({required User user, required Order order}) {
    return amount > order.totalAmount ? order.totalAmount : amount;
  }
}

class PercentageDiscountStrategy implements DiscountStrategy {
  final double percentage;

  PercentageDiscountStrategy({required this.percentage});

  @override
  double calcDiscount({required User user, required Order order}) {
    return order.totalAmount * (percentage / 100);
  }
}

// Decorator Strategy
class ConditionalDiscountStrategy implements DiscountStrategy {
  final DiscountStrategy innerStrategy;

  ConditionalDiscountStrategy({required this.innerStrategy});

  @override
  double calcDiscount({required User user, required Order order}) {
    if (user.type == UserType.premium) {
      return innerStrategy.calcDiscount(user: user, order: order);
    }
    return 0.0;
  }
}

class NoDiscountStrategy implements DiscountStrategy {
  @override
  double calcDiscount({required User user, required Order order}) {
    return 0.0;
  }
}
