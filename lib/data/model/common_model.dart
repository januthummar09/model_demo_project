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
  factory CommonModel.fromJson(Map<String, dynamic> json) {
    return CommonModel(
        classTime: json['class_time'],
        course: json['course'],
        facultyName: json['faculty_name'],
        studentList: List<StudentList>.from(
            json['student_list'].map((value) => StudentList.fromJson(value))));
  }
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
  factory StudentList.fromJson(Map<String, dynamic> json) {
    return StudentList(
      name: json['name'],
      surname: json['surname'],
      idNumber: json['id-number'],
      age: json['age'],
    );
  }
}
