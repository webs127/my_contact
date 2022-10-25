import 'package:flutter/material.dart';
import 'item.dart';

class ContactBook with ChangeNotifier {
  final List<Contact> _contacts = [];

  int get length => _contacts.length;

  void addContact(Contact contact) {
    _contacts.add(contact);
    notifyListeners();
  }

  void removeContact(Contact contact) {
    _contacts.remove(contact);
    notifyListeners();
  }
  bool isContactEmpty() {
    return _contacts.isEmpty;
  }

  Contact? getCurrentContact(int index) {
    return (_contacts.length > index) ? _contacts[index] : null;
  }
}
