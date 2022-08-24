import 'dart:convert';

//import 'package:amazon_clone_tutorial/models/rating.dart';

class Service {
  final String name;
  final String description;
  final double time;
  final List<String> images;
  final String category;
  final double price;
  final String? id;
  
  //final List<Rating>? rating;
  Service({
    required this.name,
    required this.description,
    required this.time,
    required this.images,
    required this.category,
    required this.price,
    this.id,
   
    //this.rating,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'description': description,
      'time': time,
      'images': images,
      'category': category,
      'price': price,
      'id': id,
      
      //'rating': rating,
    };
  }

  factory Service.fromMap(Map<String, dynamic> map) {
    return Service(
      name: map['name'] ?? '',
      description: map['description'] ?? '',
      time: map['time']?.toDouble() ?? 0.0,
      images: List<String>.from(map['images']),
      category: map['category'] ?? '',
      price: map['price']?.toDouble() ?? 0.0,
      id: map['_id'],
     
    //   rating: map['ratings'] != null
    //       ? List<Rating>.from(
    //           map['ratings']?.map(
    //             (x) => Rating.fromMap(x),
    //           ),
    //         )
    //       : null,
     );
  }

  String toJson() => json.encode(toMap());

  factory Service.fromJson(String source) =>
      Service.fromMap(json.decode(source));
}