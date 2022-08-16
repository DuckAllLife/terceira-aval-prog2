
class Molecule implements Comparable{
  
  final List<Map<String, int>> _moleculeFormula = [];
  late final String _description;

  Molecule({required String? formula, required String name}){
    _description = name;
    if (formula == null) {
      throw Exception('Null Value');
    }
    else{
    final regex = RegExp('([A-Z][a-z]?)([0-9]*)');
    final splitFormula = regex.firstMatch(formula);
      if (splitFormula == null) {
        throw Exception('Invalid Formula Format');
      }
      else{
        final quantityDivisons = regex.allMatches(formula);
        for (var i = 1; i < quantityDivisons.length; i++) {
        if (_moleculeFormula[i - 1].containsKey(splitFormula.group(i).toString())) {
          _moleculeFormula[i - 1].update(splitFormula.group(i).toString(), (value) => value + 1);
        }
        else{
          if (splitFormula.group(i + 1).toString() == 'null') {
            _moleculeFormula[i - 1].putIfAbsent(splitFormula.group(i).toString(), () => 1);
          }
          else if(splitFormula.group(i + 1).toString() == '1'){
            throw Exception('Invalid Formula');
          }
          else{_moleculeFormula[i - 1].putIfAbsent(splitFormula.group(i).toString(), () => int.parse(splitFormula.group(i + 1).toString()));
          }
        }
        }
      }
    }
  }

  get formula => ;

  set formula(String ){}

  get weight => ;
  
  @override
  int compareTo(other) {
    // TODO: implement compareTo
    throw UnimplementedError();
  }

}