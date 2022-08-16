
import 'element.dart';
import 'elements.dart';

class Atom{
  String? _symbol;
  final Elements _data = Elements();

  Atom(String? symbolElement){
    if (symbolElement != null) {
      _data.elementsList.forEach((element){
        if (element.symbol == symbolElement) {
          _symbol = symbolElement;
        }
    });
      if (_symbol != symbolElement) {
        throw Exception('Invalid Element Symbol');
      }
    }
    else{
        throw Exception('Null Value');
      }
    }
    
  @override
  String toString() => _symbol ??= 'null';

   Element get dataElement => _data.elementsList[_data.elementsList.indexWhere((element) => element.symbol == _symbol)];
}