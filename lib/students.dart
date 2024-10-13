class Students {
  late List<Map<String, String>> people;

  void sort(String field){

  }

  void output() {
    people.forEach((student){
      print(student);
    });
  }

  void plus(Map<String, String> person){

  }

  void remove(String field) {
    
  }

  Students(List<Map<String, String>> people) {
    this.people = people;
  }
}