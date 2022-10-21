import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:me_chat/model/constans/app_const.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum Status {
  uninitialized,
  authenticated,
  authentication,
  authenticateError,
  authenticateCanceld,
  initializeEnum
}

class AuthProvider extends ChangeNotifier {
  final GoogleSignIn googleSignIn;
  final FirebaseAuth firebaseAuth;
  final FirebaseFirestore firebaseFirestore;
  final SharedPreferences prefs;
  Status _status = Status.initializeEnum;

  Status get status => _status;

  AuthProvider(
      {required this.firebaseAuth,
      required this.firebaseFirestore,
      required this.googleSignIn,
      required this.prefs});

  String? getUserFirebaseId() {
    return prefs.getString(FirestoreConstants.id);
  }

  Future<bool> isLoggedIn() async {
    bool isLoggedIn = await googleSignIn.isSignedIn();

    if (isLoggedIn &&
        prefs.getString(FirestoreConstants.id)!.isNotEmpty == true) {
      return true;
    }
    return false;
  }

  Future<bool> handleSingIn() async {
    _status = Status.authentication;
    notifyListeners();

    GoogleSignInAccount? googleUser = await googleSignIn.signIn();

    if (googleUser != null) {
      GoogleSignInAuthentication? googleAuth = await googleUser.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      User? firebaseUser = (await FirebaseAuth.SignInWithCredential(credential))

      
    }
  }
}
