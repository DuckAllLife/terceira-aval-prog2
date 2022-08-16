import 'element.dart';
import 'elements.dart';

class Atom{
  String? _symbol;
  final List<Element> _data = Elements().elementsList;

  Atom(String? symbolElement){
    if (symbolElement != null) {
      _data.forEach((element){
        if (element.symbol == symbolElement) {
          _symbol = symbolElement;
        }
    });
      throw Exception('Invalid Element Symbol');
    }
    else{
        throw Exception('Null Value');
      }
    }
    
  @override
  String toString() => _symbol ??= 'null';
}