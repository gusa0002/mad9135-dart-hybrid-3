class Students {
  late List<Map<String, String>> people;

  void sort(String field){
    if (field == "first" || field =="last" || field == "email") {
      people.sort((a,b) => a[field]!.compareTo(b[field]!));
      print("Sorted By $field successfully!");
    }else{
      print("Invalid sort value. You can sort only by first, last or email!");
    }
  }

  void output() {
    people.forEach((student){
      print(student);
    });
  }

  void plus(Map<String, String> person){
    people.add(person);
    print("A person added successfully");
  }

  void remove(String field) {
    people.removeWhere((person) => person.containsValue(field));
  }

  Students(List<Map<String, String>> people) {
    this.people = people;
  }
}