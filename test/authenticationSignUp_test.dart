// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';


void main() {
  test('authenticationSignUp', () async {
    // Build our app and trigger a frame.
    WidgetsFlutterBinding.ensureInitialized();



    Firebase.initializeApp().whenComplete(() {
      registerUser ('gabriel@gmail.com', 'Stringpassword');

      int zero = 0;
      expect(0, zero);

      print("completed");
    });



    //expect(find.text('0'), findsOneWidget);
    int zero = 0;
    expect(zero, 0);

  });
}


Future<User?> registerUser (String email, String password) async {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  UserCredential userCredential = await firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);

}

