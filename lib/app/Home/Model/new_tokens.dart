class NewTokens {
    NewTokens({
        required this.access,
        required this.refresh,
    });

    String access;
    String refresh;

    factory NewTokens.fromJson(Map<String, dynamic> json) => NewTokens(
        access: json["access"],
        refresh: json["refresh"],
    );

    Map<String, dynamic> toJson() => {
        "access": access,
        "refresh": refresh,
    };
}