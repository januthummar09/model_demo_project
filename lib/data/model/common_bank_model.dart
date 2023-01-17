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
  //nnnnnnnnnn
}
