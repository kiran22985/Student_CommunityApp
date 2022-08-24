import 'dart:convert';

class User {
  final String id;
  final String fullName;
  final String email;
  final String password;
  final String address;
  final String phone;
  final String type;
  final String token;
  final List<dynamic> cart;

  User({
    required this.id,
    required this.fullName,
    required this.email,
    required this.password,
    required this.address,
    required this.phone,
    required this.type,
    required this.token,
    required this.cart,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'fullName': fullName,
      'email': email,
      'password': password,
      'address': address,
      'phone': phone,
      'type': type,
      'token': token,
      
      'cart': cart,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['_id'] ?? '',
      fullName: map['fullName'] ?? '',
      email: map['email'] ?? '',
      password: map['password'] ?? '',
      address: map['address'] ?? '',
      phone: map['phone'] ?? '',
      type: map['type'] ?? '',
      token: map['token'] ?? '',
      // token: map['token'] ?? '',
      cart: List<Map<String, dynamic>>.from(
        map['cart']?.map(
          (x) => Map<String, dynamic>.from(x),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  User copyWith({
    String? id,
    String? fullName,
    String? email,
    String? password,
    String? address,
    String? phone,
    String? type,
    String? token,
    List<dynamic>? cart,
  }) {
    return User(
      id: id ?? this.id,
      fullName: fullName ?? this.fullName,
      email: email ?? this.email,
      password: password ?? this.password,
      address: address ?? this.address,
      phone: phone ?? this.phone,
      type: type ?? this.type,
      token: token ?? this.token,
      cart: cart ?? this.cart,
    );
  }
}