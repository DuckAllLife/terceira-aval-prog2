import 'element.dart';
import 'elements.dart';

class Atom{
  String? _symbol;
  final List<Element> _data = Elements().elementsList;

  Atom(String? symbolElement){
    if (_data.contains(symbolElement)) {
      _symbol = symbolElement;
    }
    else{
      throw Exception('Invalid Symbol');
    }
  }
  @override
  String toString() => _symbol ??= 'null';
}
