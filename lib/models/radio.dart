class Radios {
  String name;
  String radio_url;

  Radios({required this.name, required this.radio_url});

  Radios.fromJson(Map<String, dynamic> json)
      : this(name: json["name"], radio_url: json["radio_url"] as String);
}
