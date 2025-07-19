class MarketingMaterial {
  String content;
  String layout;
  String color;

  MarketingMaterial({
    required this.content,
    required this.layout,
    required this.color,
  });

  set setContent(String content) => this.content = content;
  set setLayout(String layout) => this.layout = layout;
  set setColor(String color) => this.color = color;

  @override
  String toString() => 'MarketingMaterial(content: $content, layout: $layout, color: $color)';
}
