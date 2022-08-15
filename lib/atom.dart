
class Atom {
  String _symbol;

  Atom(String symbolElement){
    if (_elementsList.any(symbolElement)) {
      _symbol = symbolElement;
    }
    else{
      throw Exception('Invalid Symbol');
    }
  }
  @override
  String toString() => _symbol;
}
