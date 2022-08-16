import 'dart:io';

import 'element.dart';

typedef MyCallback = void Function(Element);

class Elements {
  final List<Element> _elementsList = [];
  static late Elements _instance;

  Elements._() {
    final data = File('files/elements.csv').readAsLinesSync();
    data.removeAt(0);
    data.forEach((element) {
      final elementData = element.split(',');
      _elementsList.add(Element(int.parse(elementData[0]), elementData[1], elementData[2], elementData[3]));
    });
  }

  factory Elements(){
    _instance = Elements._();
    return _instance;
  }

  void forEach(MyCallback action) {
    for (var elem in elementsList) {
      action(elem);
    }
  }

  List<Element> get elementsList => _elementsList;
}
