import 'package:xml/xml.dart';

String getCityOf(int lat, int long) {
  return 'City for lat: $lat, long: $long';
}

String getCountryOf(int lat, int long) {
  return 'Country for lat: $long, long: $long';
}

Map<String, dynamic> xmlToMap(XmlElement element) {
  final Map<String, dynamic> map = {};

  // Add attributes if any
  for (final attribute in element.attributes) {
    map['@${attribute.name.local}'] = attribute.value;
  }

  // Handle children
  final children = element.children.whereType<XmlElement>().toList();

  if (children.isEmpty) {
    // No children, just text
    map[element.name.local] = element.text;
  } else {
    final Map<String, dynamic> childMap = {};
    for (final child in children) {
      final childName = child.name.local;
      final childConverted = xmlToMap(child);

      // Merge multiple same-named children into a list
      if (childMap.containsKey(childName)) {
        final existing = childMap[childName];
        if (existing is List) {
          existing.add(childConverted[childName]);
        } else {
          childMap[childName] = [existing, childConverted[childName]];
        }
      } else {
        childMap[childName] = childConverted[childName];
      }
    }
    map[element.name.local] = childMap;
  }

  return map;
}
