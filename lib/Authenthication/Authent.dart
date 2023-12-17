import 'package:firebase_auth/firebase_auth.dart';

class Authentication {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  Future <User?> signUp(String email, String password) async{
    try{
      UserCredential credential =await _auth.createUserWithEmailAndPassword(email: email, password: password);
      return credential.user;
    }
    on FirebaseAuthException catch (e) {
     if(e.code == 'email-already-in-use') {
      print('This email address is already in use');
     }
     else {
      print( 'An error has occured: ${e.code}');
     }
    }
    return null;
  }
   

   Future <User?> signIn(String email, String password) async{
    try{
      UserCredential credential =await _auth.signInWithEmailAndPassword(email: email, password: password);
      return credential.user;
    }
     on FirebaseAuthException catch (e) {
     if(e.code == 'user-not-found' || e.code == 'wrong-password') {
      print( 'Invalid email or password');
     }
     else {
      print( 'An error occured: ${e.code}');
     }
    }
    return null;
}

  signInWithEmailAndPassword({required String email, required String password}) {}
}