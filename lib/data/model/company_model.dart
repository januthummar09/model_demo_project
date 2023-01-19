class CompanyModel {
  final String? city;
  final String? companyName;
  final ApplicationDeveloper? applicationDeveloper;
  final BackendDeveloper? backendDeveloper;
  final FrontendDeveloper? frontendDeveloper;

  CompanyModel({
    this.city,
    this.companyName,
    this.applicationDeveloper,
    this.backendDeveloper,
    this.frontendDeveloper,
  });
  factory CompanyModel.fromJson(Map<String, dynamic> json) {
    return CompanyModel(
      city: json['city'],
      companyName: json['company_name'],
      applicationDeveloper:
          ApplicationDeveloper.fromJson(json['applicationDeveloper']),
      backendDeveloper: BackendDeveloper.fromJson(json['backendDeveloper']),
      frontendDeveloper: FrontendDeveloper.fromJson(json['frontendDeveloper']),
    );
  }
}

class ApplicationDeveloper {
  final String? name;
  final String? devloper;
  final int? salary;

  ApplicationDeveloper({
    this.name,
    this.devloper,
    this.salary,
  });
  factory ApplicationDeveloper.fromJson(Map<String, dynamic> json) {
    return ApplicationDeveloper(
      name: json['name'],
      devloper: json['devloper'],
      salary: json['salary'],
    );
  }
}

class BackendDeveloper {
  final String? name;
  final String? devloper;
  final int? salary;

  BackendDeveloper({
    this.name,
    this.devloper,
    this.salary,
  });
  factory BackendDeveloper.fromJson(Map<String, dynamic> json) {
    return BackendDeveloper(
      name: json['name'],
      devloper: json['devloper'],
      salary: json['salary'],
    );
  }
}

class FrontendDeveloper {
  final String? name;
  final String? devloper;
  final int? salary;

  FrontendDeveloper({
    this.name,
    this.devloper,
    this.salary,
  });
  factory FrontendDeveloper.fromJson(Map<String, dynamic> json) {
    return FrontendDeveloper(
      name: json['name'],
      devloper: json['devloper'],
      salary: json['salary'],
    );
  }
}
