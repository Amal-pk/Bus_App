class BusList {
    BusList({
        required this.status,
        required this.busList,
    });

    bool status;
    List<dynamic> busList;

    factory BusList.fromJson(Map<String, dynamic> json) => BusList(
        status: json["status"],
        busList: List<dynamic>.from(json["bus_list"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "bus_list": List<dynamic>.from(busList.map((x) => x)),
    };
}
