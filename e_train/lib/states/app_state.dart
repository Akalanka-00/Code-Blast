import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' hide EmailAuthProvider, PhoneAuthProvider;
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';

class ApplicationState extends ChangeNotifier {
  ApplicationState() {
    init();
  }

  User? _user;

  User? get user => _user;

  Future<void> init() async {
    FirebaseAuth.instance.userChanges().listen((user) async {
      _user = user;
      if (_user != null) {
      } else {}
      notifyListeners();
    });
  }
}
