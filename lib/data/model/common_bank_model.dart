class CommonBankModel {
  final String? bankName;
  final String? branch;
  final int? ifscCode;
  final List<CustomerData>? customerData;

  CommonBankModel({
    this.bankName = "",
    this.branch = "",
    this.ifscCode,
    this.customerData,
  });
  factory CommonBankModel.fromJson(Map<String, dynamic> json) {
    return CommonBankModel(
        bankName: json['bank_name'],
        branch: json['branch'],
        ifscCode: json['IFSC_code'],
        customerData: List<CustomerData>.from(
            json['customerList'].map((value) => CustomerData.fromJson(value))));
  }
}

class CustomerData {
  final String? customerName;
  final int? accountNumber;
  final String? accountType;
  final int? mobileNumber;
  final String? totalBalance;

  CustomerData({
    this.customerName,
    this.accountNumber,
    this.accountType,
    this.mobileNumber,
    this.totalBalance,
  });
  factory CustomerData.fromJson(Map<String, dynamic> json) {
    return CustomerData(
      customerName: json['customerName'],
      accountNumber: json['accountNumber'],
      accountType: json['accountType'],
      mobileNumber: json['mobileNumber'],
      totalBalance: json['totalBalance'].toString(),
    );
  }
}
