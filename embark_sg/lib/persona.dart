class Persona {
  final int? id;
  final List<int> questionPath = List.generate(6, (index) => 0);
  final DateTime? arrival;

  Persona({this.id, this.arrival});

  void updatePath(int index, int choice) => this.questionPath[index] = choice + 1;

  bool isAllAnswered() {
    if (this.questionPath[0] == 0) {
      return false;
    } else {
      return true;
    }
  }

  bool isArrivalEntered() {
    if (this.arrival == null) {
      return false;
    } else {
      return true;
    }
  }

  bool isSingaporean() {
    if (this.questionPath[0] == 1) {
      return true;
    } else {
      return false;
    }
  }

}