import 'package:mistri/models/customer.dart';
import 'package:flutter/material.dart';
import 'package:mistri/models/professional.dart';

class UserProvider extends ChangeNotifier {
  User _user = User(
    id: '',
    fullName: '',
    email: '',
    password: '',
    address: '',
    phone: '',
    type: '',
    token: '',
    cart: [],
  );

  User get user => _user;

  void setUser(String user) {
    _user = User.fromJson(user);
    notifyListeners();
  }

  void setUserFromModel(User user) {
    _user = user;
    notifyListeners();
  }
  Professionals _user1 = Professionals(
    id: '',
    fullName: '',
    email: '',
    password: '',
    address: '',
    phone: '',
    profession1: '',
    time1: '',
    charge1: '',
    description: '',
    token: '',
  );

  Professionals get user1 => _user1;

  void setUser1(String user1) {
    _user1 = Professionals.fromJson(user1);
    notifyListeners();
  }

  void setUserFromModel1(Professionals user1) {
    _user1 = user1;
    notifyListeners();
  }
}