import 'package:modelhandling/model/student.dart';

class StudentService{
  Future<List<Student>> fetchStudents() async{
    await Future.delayed(const Duration(seconds: 2));

    final rawData = [
      {'id' : '2', 'name': 'Emman Angelo', 'age': 20, 'gpa': 1.5},
      {'id' : '3', 'name': 'Charles Castillano', 'age': 21, 'gpa': 1.25},
      {'id' : '4', 'name': 'Mile Peter', 'age': 22, 'gpa': 1.75},
    ];

    return rawData.map((data) => Student.fromMap(data)).toList();


  }
}