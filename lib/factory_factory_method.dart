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

// Abstract Creator
abstract class UIButtonFactory {
  UIButton createButton();
}

// Concrete Creators
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

// Abstract Product
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
