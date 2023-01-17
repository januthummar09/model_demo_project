
class CommonModel {
  final String? classTime;
  final String? course;
  final String? facultyName;
  final List<StudentList>? studentList;

  CommonModel({
    this.classTime = "",
    this.course = "",
    this.facultyName = "",
    this.studentList,
  });
}

class StudentList {
  final String? name;
  final String? surname;
  final int? idNumber;
  final int? age;

  StudentList({
    this.name,
    this.surname,
    this.idNumber,
    this.age,
  });
}


