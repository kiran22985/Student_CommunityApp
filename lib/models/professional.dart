import 'dart:convert';

class Professionals {
  final String id;
  final String fullName;
  final String email;
  final String password;
  final String address;
  final String phone;
  final String profession1;
  final String time1;
  final String charge1;
  final String description;
  final String token;

  Professionals({
    required this.id,
    required this.fullName,
    required this.email,
    required this.password,
    required this.address,
    required this.phone,
    required this.profession1,
    required this.time1,
    required this.charge1,
    required this.description,
    required this.token,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'fullName': fullName,
      'email': email,
      'password': password,
      'address': address,
      'phone': phone,
      'profession1': profession1,
      'time1': time1,
      'token': token,
      'charge1': charge1,
      'description':description
    };
  }

  factory Professionals.fromMap(Map<String, dynamic> map) {
    return Professionals(
      id: map['_id'] ?? '',
      fullName: map['fullName'] ?? '',
      email: map['email'] ?? '',
      password: map['password'] ?? '',
      address: map['address'] ?? '',
      phone: map['phone'] ?? '',
      profession1: map['profession1'] ?? '',
      time1: map['time1'] ?? '',
      charge1: map['charge1'] ?? '',
      description: map['description'] ?? '',
      token: map['token'] ?? '',
      
    );
  }

  String toJson() => json.encode(toMap());

  factory Professionals.fromJson(String source) => Professionals.fromMap(json.decode(source));

  Professionals copyWith({
    String? id,
    String? fullName,
    String? email,
    String? password,
    String? address,
    String? phone,
    String? profession1,
    String? time1,
    String? charge1,
    String? description,
    String? token,
  }) {
    return Professionals(
      id: id ?? this.id,
      fullName: fullName ?? this.fullName,
      email: email ?? this.email,
      password: password ?? this.password,
      address: address ?? this.address,
      phone: phone ?? this.phone,
      profession1: profession1 ?? this.profession1,
      time1: time1 ?? this.time1,
      charge1: charge1 ?? this.charge1,
      token: token ?? this.token,
      description: description?? this.description
    );
  }
}