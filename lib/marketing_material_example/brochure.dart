import 'cloneable_marketing_material.dart';
import 'marketing_material.dart';

class Brochure extends MarketingMaterial with CloneableMarketingMaterial {
  Brochure({
    required super.content,
    required super.layout,
    required super.color,
  });

  @override
  MarketingMaterial clone() {
    return Brochure(
      content: content,
      layout: layout,
      color: color,
    );
  }
}
