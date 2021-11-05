
import 'package:flutter/cupertino.dart';

class User{
  late final String id;
  late final String name;
  late final String image;
  late final int age;
  late final String phone;
  late final String email;


 // convert from json to object
  User.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        image = json['image'],
        age = json['age'],
        phone = json['phone'],
        email = json['email'];

  // convert from object to json
  Map<String, dynamic> toJson() => {
    'id' : id,
    'name' : name,
    'image' : image,
    'age' : age,
    'phone' : phone,
    'email' : email
  };
}