import 'dart:core';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  // FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> signInWithGoogle()async{
    // GoogleSignIn _googleSignIn = GoogleSignIn();
    try{
      // GoogleSignInAccount _googleUser = await _googleSignIn.signIn();
      // GoogleSignInAuthentication _googleAuth = await _googleUser.authentication;
      // final AuthCredential credential = GoogleAuthProvider.credential(idToken: _googleAuth.idToken,accessToken: _googleAuth.accessToken);
      // await _auth.signInWithCredential(credential);
    }catch(e){
      print(e.toString());
    }
  }

  Future<String> signIn({String email, String password}) async {
    // try {
      // await _auth.signInWithEmailAndPassword(email: email, password: password);
      return 'Signed in';
    // } on FirebaseAuthException catch (e) {
    //   return e.message;
    }
  }

  Future<String> signUp({String email, String password}) async {
    // try {
      // await _auth.createUserWithEmailAndPassword(
      //     email: email, password: password);
      return 'Signed up ';
    // } on FirebaseAuthException catch (e) {
    //   return e.message;
    }
  // }

  Future<void> signOut()async{
    try{
      // _auth.signOut();
    }catch(e){
      print(e.toString());
    }
  }

  // Stream<User> get user => _auth.authStateChanges();
  // User get currentUser => _auth.currentUser;

// }

// final authState = StreamProvider((ref)=>AuthService().user);