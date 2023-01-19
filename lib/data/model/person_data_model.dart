class PersonDataModel {
  final Person1? personData1;

  PersonDataModel({
    this.personData1,
  });
  factory PersonDataModel.fromJson(Map<String,dynamic>json){
    return PersonDataModel(
      personData1: Person1.fromJson(json['person1']),
    );
  }
}

class Person1 {
  final String? firstName;
  final String? lastName;
  final int? age;
  final Address? address;
  final List<PhoneNumber>? phoneNumberList;

  Person1({
    this.firstName,
    this.lastName,
    this.age,
    this.address,
    this.phoneNumberList,
  });
  factory Person1.fromJson(Map<String, dynamic> json) {
    return Person1(
      firstName: json['first_name'],
      lastName: json['last_name'],
      age: json['age'],
      address: Address.fromJson(json['address']),
      phoneNumberList: List<PhoneNumber>.from(
          json['phone_number'].map((value) => PhoneNumber.fromJson(value))),
    );
  }
}

class Address {
  final String? city;
  final String? state;
  final int? pincode;

  Address({
    this.city,
    this.state,
    this.pincode,
  });
  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      city: json['city'],
      state: json['state'],
      pincode: json['pincode'],
    );
  }
}

class PhoneNumber {
  final String? type1;
  final int? no;

  PhoneNumber({
    this.type1,
    this.no,
  });
  factory PhoneNumber.fromJson(Map<String, dynamic> json) {
    return PhoneNumber(
      type1: json['type1'],
      no: json['no'],
    );
  }
}
