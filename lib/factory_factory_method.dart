main() {
  // Create factories
  UIButtonFactory androidFactory = AndroidButtonFactory();
  UIButtonFactory iosFactory = IOSButtonFactory();

  // Create buttons
  UIButton androidButton = androidFactory.createButton();
  UIButton iosButton = iosFactory.createButton();

  // Render buttons
  androidButton.render();
  iosButton.render();
}

// Factory Method: Abstract Creator [Pure Factory interface]
// DIP: High-level module
// Note: Abstract creator can include business logic alongside the factory method E.g. PizzaFactory
abstract class UIButtonFactory {
  UIButton createButton();
}

// Factory Method: Concrete Creators
// DIP: Low-level module
class AndroidButtonFactory implements UIButtonFactory {
  @override
  UIButton createButton() {
    return AndroidButton();
  }
}

class IOSButtonFactory implements UIButtonFactory {
  @override
  UIButton createButton() {
    return IOSButton();
  }
}

// Factory Method: Abstract Product
// DIP: Abstraction
abstract class UIButton {
  void render();
}

// Concrete Products
class AndroidButton implements UIButton {
  @override
  void render() {
    print('Rendering Android Button');
  }
}

class IOSButton implements UIButton {
  @override
  void render() {
    print('Rendering iOS Button');
  }
}
