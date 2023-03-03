
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
