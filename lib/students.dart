class Students {
  late List<Map<String, String>> people;

  void sort(String field){
    if (field == "first" || field =="second" || field == "email") {
    people.sort((a,b) => a[field]!.toLowerCase().compareTo(b[field]!.toLowerCase()));
    }
    print(people);
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