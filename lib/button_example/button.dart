class Button {
  final String content;
  final ButtonData buttonData;

  Button({
    required this.content,
    required this.buttonData,
  });

  Button copyWith({
    String? content,
    ButtonData? buttonData,
  }) {
    return Button(
      content: content ?? this.content,
      buttonData: buttonData ?? this.buttonData,
    );
  }

  @override
  String toString() {
    return 'Button(content: $content, color: ${buttonData.color}, xPosition: ${buttonData.xPosition}, yPosition: ${buttonData.yPosition})';
  }
}

class ButtonData {
  final String color;
  final double xPosition;
  final double yPosition;

  ButtonData({
    required this.color,
    required this.xPosition,
    required this.yPosition,
  });

  ButtonData copyWith({
    String? color,
    double? xPosition,
    double? yPosition,
  }) {
    return ButtonData(
      color: color ?? this.color,
      xPosition: xPosition ?? this.xPosition,
      yPosition: yPosition ?? this.yPosition,
    );
  }
}
