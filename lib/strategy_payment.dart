main() {
  PaymentContext context = PaymentContext(CardPayment());
  context.processPayment(100.0);

  context.changeStrategy(WalletPayment());
  context.processPayment(200.0);
}

class PaymentContext {
  PaymentStrategy _strategy;

  PaymentContext(this._strategy);

  void changeStrategy(PaymentStrategy strategy) {
    _strategy = strategy;
  } // Run-time swapping in the same context

  void processPayment(double amount) {
    _validate(amount); // Shared logic
    _strategy.pay(amount); // What varies
    _saveTransaction(); // Shared logic
  }

  _validate(double amount) {
    print('Validating payment details.');
  }

  _saveTransaction() {
    print('Saving transaction to database.');
  }
}

abstract interface class PaymentStrategy {
  void pay(double amount); // Delegation
}

class CardPayment implements PaymentStrategy {
  @override
  void pay(double amount) {
    print('Paying \$${amount} using Card.');
  }
}

class CashPayment implements PaymentStrategy {
  @override
  void pay(double amount) {
    print('Paying \$${amount} using Cash.');
  }
}

class WalletPayment implements PaymentStrategy {
  @override
  void pay(double amount) {
    print('Paying \$${amount} using Wallet.');
  }
}
