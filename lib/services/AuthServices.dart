import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthServices with ChangeNotifier {
  final _auth = FirebaseAuth.instance;

  Future<FirebaseUser> getUser() {
    return _auth.currentUser();
  }

  Future<FirebaseUser> login() async {
    var result = await _auth.signInAnonymously();
    notifyListeners();
    return result.user;
  }
}
