import 'package:mad9135_dart_hybrid_3/students.dart' as students;
import 'dart:convert' as convert;


void main(List<String> arguments) {
  String json = '''
    [
      {"first":"Steve", "last":"Griffith", "email":"griffis@algonquincollege.com"},
      {"first":"Adesh", "last":"Shah", "email":"shaha@algonquincollege.com"},
      {"first":"Tony", "last":"Davidson", "email":"davidst@algonquincollege.com"},
      {"first":"Adam", "last":"Robillard", "email":"robilla@algonquincollege.com"}
    ]
  ''';
  var peopleList = convert.jsonDecode(json) as List<dynamic>;
  List<Map<String, String>> peopleConverted = peopleList.map((i) {
    return Map<String,String>.from(i);
  }).toList();
  
  var people = students.Students(peopleConverted);
  people.output();
  people.sort("email");
    // people.output();
  // people.sort("second");
}
