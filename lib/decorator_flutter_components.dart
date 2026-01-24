main() {
  final widget = Center(
    child: Padding(
      padding: 16.0,
      child: GestureDetector(
        onTap: () => print('Text tapped!'),
        child: Text('Hello, Decorator Pattern!'),
      ),
    ),
  );

  print(widget.render());
}

// Abstract Component
abstract class Widget {
  String render();
}

// Concrete Component [Original Behavior]
class Text implements Widget {
  final String data;
  Text(this.data);

  @override
  String render() {
    return "Text('$data')";
  }
}

// Abstract Decorator
abstract class Decorator implements Widget {
  final Widget child;
  Decorator({required this.child});
}

// Concrete Decorators
class Padding extends Decorator {
  final double padding;

  Padding({required super.child, required this.padding});

  @override
  String render() {
    return 'Padding($padding) -> ${child.render()}';
  }
}

class Center extends Decorator {
  Center({required super.child});

  @override
  String render() {
    return 'Center -> ${child.render()}';
  }
}

class GestureDetector extends Decorator {
  final void Function() onTap;

  GestureDetector({required super.child, required this.onTap});

  @override
  String render() {
    return 'GestureDetector(onTap: $onTap) -> ${child.render()}';
  }
}
