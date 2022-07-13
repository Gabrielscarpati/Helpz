import 'package:firebase_auth/firebase_auth.dart';

class AuthFunctions {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  FirebaseAuth getFireBaseAuth(){
    return _firebaseAuth;
  }
  
}