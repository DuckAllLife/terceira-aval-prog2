class Element {
  int weight;
  String symbol;
  String name;
  String latinName;

  Element(
      int dataWeight, String dataSymbol, String dataName, String dataLatinName)
      : weight = dataWeight,
        symbol = dataSymbol,
        name = dataName,
        latinName = dataLatinName;

  @override
  String toString() => symbol;
}
