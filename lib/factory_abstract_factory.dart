main() {
  // Create factories
  UIFactory androidFactory = AndroidUIFactory();
  UIFactory iosFactory = IOSUIFactory();

  // Create buttons
  UIButton androidButton = androidFactory.createButton();
  UIButton iosButton = iosFactory.createButton();

  // Create dialogs
  UIDialog androidDialog = androidFactory.createDialog();
  UIDialog iosDialog = iosFactory.createDialog();

  // Create snack bars
  UISnackBar androidSnackBar = androidFactory.createSnackBar();
  UISnackBar iosSnackBar = iosFactory.createSnackBar();

  // Render dialogs
  androidDialog.render();
  iosDialog.render();

  // Render buttons
  androidButton.render();
  iosButton.render();

  // Render snack bars
  androidSnackBar.render();
  iosSnackBar.render();
}

// abstract factory focuses on families of related objects
abstract class UIFactory {
  UIButton createButton();
  UIDialog createDialog();
  UISnackBar createSnackBar();
}

// Concrete Factory 1
class AndroidUIFactory implements UIFactory {
  @override
  UIButton createButton() {
    return AndroidButton();
  }

  @override
  UIDialog createDialog() {
    return AndroidDialog();
  }

  @override
  UISnackBar createSnackBar() {
    return AndroidSnackBar();
  }
}

// Concrete Factory 2
class IOSUIFactory implements UIFactory {
  @override
  UIButton createButton() {
    return IOSButton();
  }

  @override
  UIDialog createDialog() {
    return IOSDialog();
  }

  @override
  UISnackBar createSnackBar() {
    return IOSSnackBar();
  }
}

// Abstract Products
abstract class UIButton {
  void render();
}

abstract class UIDialog {
  void render();
}

abstract class UISnackBar {
  void render();
}

// Concrete Products for Android
class AndroidButton implements UIButton {
  @override
  void render() {
    print('Rendering Android Button');
  }
}

class AndroidDialog implements UIDialog {
  @override
  void render() {
    print('Rendering Android Dialog');
  }
}

class AndroidSnackBar implements UISnackBar {
  @override
  void render() {
    print('Rendering Android SnackBar');
  }
}

// Concrete Products for IOS
class IOSButton implements UIButton {
  @override
  void render() {
    print('Rendering iOS Button');
  }
}

class IOSDialog implements UIDialog {
  @override
  void render() {
    print('Rendering iOS Dialog');
  }
}

class IOSSnackBar implements UISnackBar {
  @override
  void render() {
    print('Rendering iOS SnackBar');
  }
}
