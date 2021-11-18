import 'package:flutter/material.dart';
import 'package:flutter_crud_contacts/data/dummy_users.dart';
import 'package:flutter_crud_contacts/models/user.dart';

class Users with ChangeNotifier {

  final Map<String, User> _items = dummy_users;

  //list users
  List<User> get all {
    return [..._items.values];
  }

  //count users
  int get count {
    return _items.length;
  }

}