
class Molecule implements Comparable{
  
  final List<Map<String, int>> _moleculeFormula = [{},{}];
  late final String? _description;

  Molecule({required String? formula, required String name}){
    if (formula == null) {
      throw Exception('Null Value');
    }
    else{
    _description = formula;
    //this.formula = formula;
    final regex = RegExp('([A-Z][a-z]?)([0-9]*)');
    final splitFormula = regex.firstMatch(formula);
      if (splitFormula == null) {
        throw Exception('Invalid Formula Format');
      }
      else{

        for (var i = 1; i < splitFormula.groupCount; i++) {
        if (_moleculeFormula[i].containsKey(splitFormula.group(i).toString())) {
          _moleculeFormula[i].update(splitFormula.group(i).toString(), (value) => value + 1);
        }
        else{
          if(splitFormula.group(i + 1).toString() == '1'){
            throw Exception('Invalid Formula');
          }
          else if (splitFormula.group(i + 1).toString() == '') {
            _moleculeFormula[i].putIfAbsent(splitFormula.group(i).toString(), () => 1);
          }
          else{_moleculeFormula[i].putIfAbsent(splitFormula.group(i).toString(), () => int.parse(splitFormula.group(i + 1).toString()));
          }
        }
        }
      }
    }
  }

  String? get formula => _description ??= throw Exception('Null Value');
/*
  set formula(String? exchange){
    if (condition) {
      
    } else {
      
    }
  }

  int get weight => _moleculeFormula.forEach((element) { })
  */
  @override
  int compareTo(other) {
    // TODO: implement compareTo
    throw UnimplementedError();
  }

}