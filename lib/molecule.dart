
class Molecule implements Comparable{
  
  final List<Map<String, int>> _moleculeFormula = [];
  final String description;

  Molecule({required String formula, required String name}){
    var regex = RegExp('([A-Z][a-z]?)([0-9]*)');
  
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