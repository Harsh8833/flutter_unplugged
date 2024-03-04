import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';


class AuthorizationViewModel extends ChangeNotifier {
  FirebaseAuth _firebaseAuth1 = FirebaseAuth.instance;

  FirebaseAuth get firebaseAuth1 => _firebaseAuth1;

  setUser(FirebaseAuth firebaseAuth1) {
    _firebaseAuth1 = firebaseAuth1;
  }

}
