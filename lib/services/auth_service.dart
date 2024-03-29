import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:flutter/cupertino.dart';
import 'package:pasanaq_sol/models/user_model.dart';

class AuthService {
  final auth.FirebaseAuth _firebaseAuth = auth.FirebaseAuth.instance;

  UserAttribtues ? _userFromFirebase(auth.User? user){
    if (user == null){
      return null;
    }
    return UserAttribtues (user.uid, user.email);
  }

  Stream<UserAttribtues ?>? get user {
    return _firebaseAuth.authStateChanges().map(_userFromFirebase);
  }

  Future<UserAttribtues ?> signInWithEmailAndPassword(
      String email,
      String password,
  ) async {
    final credential = await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
    final token = await credential.user?.getIdToken();
    debugPrint('token: $token'); //Id Token of the User
    return _userFromFirebase(credential.user);
  }

  Future<UserAttribtues?> createUserWithEmailAndPassword(
      String email,
      String password,
  ) async {
    final credential = await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
    return _userFromFirebase(credential.user);
  }

  Future<void> signOut() async{
    return await _firebaseAuth.signOut();
  }
}