import 'dart:io';
import 'element.dart';

typedef MyCallback = void Function(Element);

class Elements {
  
  final List<Element> _elementsList = [];

  Elements(){
    File('files/elements.csv').readAsLinesSync();
  }

  void forEach(MyCallback action){
    for(var elem in _elementsList){
      action(elem);
    }
  }

}