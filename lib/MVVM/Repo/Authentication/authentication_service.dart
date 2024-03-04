import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:unplugged_flutter/MVVM/Models/Login%20Model/login_model.dart';
import 'package:unplugged_flutter/MVVM/Repo/api_status.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  Future<Object> loginUser(String email, String password) async {

    try {
      Map<String, dynamic> data = {};
      UserCredential cred = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      await firestore
          .collection("/users")
          .where("uid", isEqualTo: cred.user!.uid)
          .get()
          .then((value) {
        data = value.docs[0].data();
      });
      return Success(200, loginModelFromJson(jsonEncode(data)));
    } on FirebaseAuthException catch (e) {
      return Failure(404, e.code);
    }
  }

  Future<Object> signUpUser(String email, String password, String name, String role) async {
    final FirebaseAuth _auth = FirebaseAuth.instance;
    final FirebaseFirestore firestore = FirebaseFirestore.instance;

    try {
      // Create the user with email and password
      UserCredential cred = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);

      // Additional user details
      final userData = {
        'email': email,
        'role': role,
        'name': name,
        'uid': cred.user!.uid, // Store the user's UID for reference
      };

      // Add the user details to Firestore
      await firestore.collection('/users').doc(cred.user!.uid).set(userData);

      // Return success with the user data
      return Success(200, loginModelFromJson(jsonEncode(userData)));
    } on FirebaseAuthException catch (e) {
      // Handle errors, such as email already in use, weak password, etc.
      return Failure(400, e.code); // You might want to customize the status code based on the error
    }
  }


}
