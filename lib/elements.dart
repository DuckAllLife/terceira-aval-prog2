import 'dart:io';
import 'element.dart';

typedef MyCallback = void Function(Element);

class Elements {
  final List<Element> _elementsList = [];

  Elements() {
    final data = File('files/elements.csv').readAsLinesSync();
    data.removeAt(0);
    data.forEach((element) {
      final elementData = element.split(',');
      _elementsList.add(Element(int.parse(elementData[0]), elementData[1], elementData[2], elementData[3]));
    });
  }

  void forEach(MyCallback action) {
    for (var elem in _elementsList) {
      action(elem);
    }
  }
}
