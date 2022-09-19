// To parse required this JSON data, do
//
//     final userData = userDataFromJson(jsonString);

import 'dart:convert';

List<UserData> userDataFromJson(String str) => List<UserData>.from(json.decode(str).map((x) => UserData.fromJson(x)));

String userDataToJson(List<UserData> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UserData {
  UserData({
   required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.address,
    required this.phone,
    required this.website,
    required this.company,
  });

  int id;
  String name;
  String username;
  String email;
  Address address;
  String phone;
  String website;
  Company company;

  factory UserData.fromJson(Map<String, dynamic> json) => UserData(
    id:  json["id"],
    name:   json["name"],
    username:  json["username"],
    email:   json["email"],
    address: Address.fromJson(json["address"]),
    phone: json["phone"],
    website:  json["website"],
    company: Company.fromJson(json["company"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "name": name == null ? null : name,
    "username": username == null ? null : username,
    "email": email == null ? null : email,
    "address": address == null ? null : address.toJson(),
    "phone": phone == null ? null : phone,
    "website": website == null ? null : website,
    "company": company == null ? null : company.toJson(),
  };
}

class Address {
  Address({
    required this.street,
    required this.suite,
    required this.city,
    required this.zipcode,
    required this.geo,
  });

  String street;
  String suite;
  String city;
  String zipcode;
  Geo geo;

  factory Address.fromJson(Map<String, dynamic> json) => Address(
    street: json["street"] == null ? null : json["street"],
    suite: json["suite"] == null ? null : json["suite"],
    city: json["city"] == null ? null : json["city"],
    zipcode: json["zipcode"] == null ? null : json["zipcode"],
    geo: Geo.fromJson(json["geo"]),
  );

  Map<String, dynamic> toJson() => {
    "street": street == null ? null : street,
    "suite": suite == null ? null : suite,
    "city": city == null ? null : city,
    "zipcode": zipcode == null ? null : zipcode,
    "geo": geo == null ? null : geo.toJson(),
  };
}

class Geo {
  Geo({
    required this.lat,
    required this.lng,
  });

  String lat;
  String lng;

  factory Geo.fromJson(Map<String, dynamic> json) => Geo(
    lat: json["lat"] == null ? null : json["lat"],
    lng: json["lng"] == null ? null : json["lng"],
  );

  Map<String, dynamic> toJson() => {
    "lat": lat == null ? null : lat,
    "lng": lng == null ? null : lng,
  };
}

class Company {
  Company({
    required this.name,
    required this.catchPhrase,
    required this.bs,
  });

  String name;
  String catchPhrase;
  String bs;

  factory Company.fromJson(Map<String, dynamic> json) => Company(
    name: json["name"] == null ? null : json["name"],
    catchPhrase: json["catchPhrase"] == null ? null : json["catchPhrase"],
    bs: json["bs"] == null ? null : json["bs"],
  );

  Map<String, dynamic> toJson() => {
    "name": name == null ? null : name,
    "catchPhrase": catchPhrase == null ? null : catchPhrase,
    "bs": bs == null ? null : bs,
  };
}
