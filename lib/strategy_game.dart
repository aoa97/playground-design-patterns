main() {
  // Creating a character with an initial movement strategy
  final c1 = Character(
    id: 1,
    name: "Hero",
    movementStrategy: WalkStrategy(), // Initial strategy
  );

  // Character moves using different strategies at runtime
  c1
    ..move()
    ..setMovementStrategy(FlyStrategy())
    ..move()
    ..setMovementStrategy(TeleportStrategy())
    ..move();
}

// Context
class Character {
  final int id;
  final String name;

  MovementStrategy _movementStrategy;

  Character({
    required this.id,
    required this.name,
    required MovementStrategy movementStrategy,
  }) : _movementStrategy = movementStrategy;

  void setMovementStrategy(MovementStrategy strategy) {
    _movementStrategy = strategy;
  }

  void move() {
    _movementStrategy.move(this);
  }
}

// Strategy Interface
abstract class MovementStrategy {
  void move(Character character);
}

// Concrete Strategies
class WalkStrategy implements MovementStrategy {
  @override
  void move(Character character) {
    print("${character.name} is walking...");
  }
}

class FlyStrategy implements MovementStrategy {
  @override
  void move(Character character) {
    print("${character.name} is flying...");
  }
}

class TeleportStrategy implements MovementStrategy {
  @override
  void move(Character character) {
    print("${character.name} is teleporting...");
  }
}
