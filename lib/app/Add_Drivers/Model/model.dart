class DriverManage {
  DriverManage({
    required this.status,
    required this.message,
  });

  bool status;
  String message;

  factory DriverManage.fromJson(Map<String, dynamic> json) => DriverManage(
        status: json["status"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
      };
}

class DriverManageAdd {
  DriverManageAdd({
    required this.name,
    required this.mobile,
    required this.licenseNo,
  });

  String name;
  String mobile;
  String licenseNo;

  factory DriverManageAdd.fromJson(Map<String, dynamic> json) =>
      DriverManageAdd(
        name: json["name"],
        mobile: json["mobile"],
        licenseNo: json["license_no"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "mobile": mobile,
        "license_no": licenseNo,
      };
}
