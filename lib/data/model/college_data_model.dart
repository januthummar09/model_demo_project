class CollegeDataModel {
  final String? collegeName;
  final String? city;
  final int? collegeCode;
  final List? departmentList;

  CollegeDataModel({
    this.collegeName,
    this.city,
    this.collegeCode,
    this.departmentList,
  });
  factory CollegeDataModel.fromJson(Map<String,dynamic>json){
    return CollegeDataModel(
      collegeName: json['college_name'],
      city: json['City'],
      collegeCode: json['college_code'],
    );
  }
  

}

class DepartmentList {
  final String? departmentName;
  final String? facultyName;
  final String? qualifications;

  DepartmentList({
    this.departmentName,
    this.facultyName,
    this.qualifications,
  });
}
