import 'atom.dart';

class Molecule implements Comparable<Molecule> {
  final List<Map<String, int>> _moleculeFormula = [];
  late String? _description;

  Molecule({required String formula, required String name}) {
    this.formula = formula;
    _description = formula;
  }

  String? get formula => _description ??= throw Exception('Null Value');

  set formula(String? exchange) {
    if (exchange == null) {
      throw Exception('Null Value');
    } 
    else if(exchange == ''){
      throw Exception('Invalid Formula Format');
    }
    else {
      _description = exchange;
      _moleculeFormula.clear();

      final regex = RegExp('(?<symbol>[A-Z][a-z]?)(?<quant>[0-9]*)');
      final total = regex.allMatches(exchange);

      for (var unity in total) {
        String? atomType = unity.namedGroup('symbol');
        int atomTimes;

        if (unity.namedGroup('quant') == '1') {
          throw Exception('Invalid Formula');
        } else if (unity.namedGroup('quant') == '') {
          atomTimes = 1;
        } else {
          atomTimes = int.parse(unity.namedGroup('quant')!);
        }

        if (atomType == null) {
          throw Exception('Null Value');
        } else {
          Atom singleAtom = Atom(atomType);
          _moleculeFormula.add({atomType : atomTimes});
        }
      }
    }
  }
 
  int get weight {
    int atomicWeight = 0;
    _moleculeFormula.forEach((element) {
      element.forEach((key, value) {
        Atom atom = Atom(key);
        atomicWeight += atom.dataElement.weight * value;
      });
    });
    return atomicWeight;
  }

  @override
  int compareTo(other) => (this.weight - other.weight);
}
