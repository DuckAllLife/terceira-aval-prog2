
class Element {
  final int _weight;
  final String _symbol, _name, _latinName;

  Element(
      int dataWeight, String dataSymbol, String dataName, String dataLatinName)
      : _weight = dataWeight,
        _symbol = dataSymbol,
        _name = dataName,
        _latinName = dataLatinName;

  @override
  String toString() => _symbol;
  
  String get symbol => _symbol;
  String get name => _name;
  String get latinName => _latinName;
  int get weight => _weight;
}
