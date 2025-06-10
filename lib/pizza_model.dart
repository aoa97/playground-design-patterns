class Pizza {
  final String? crust;
  final String? sauce;
  final List<String> toppings;
  final bool hasCheese;

  Pizza({
    required this.crust,
    required this.sauce,
    required this.toppings,
    required this.hasCheese,
  });

  @override
  String toString() {
    return 'Pizza(crust: $crust, sauce: $sauce, toppings: $toppings, hasCheese: $hasCheese)';
  }
}
