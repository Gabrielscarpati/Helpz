// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';


void main()  {
  test('SignUpWorker', () async {
    WidgetsFlutterBinding.ensureInitialized();

      Firebase.initializeApp().whenComplete(() async{

        await logInUser ('gabriel@gmail.com', 'Stringpassword');

        await criarprestador ();
        String? IdUsu =  await  getUserId();
        print(IdUsu);
        int zero = 0;
        expect(0, IdUsu);

        print("completed");
      });
  });


/*
  test('verifyUserId', () async {
    WidgetsFlutterBinding.ensureInitialized();



    Firebase.initializeApp().whenComplete(() async{
      await logInUser ('gabriel@gmail.com', 'Stringpassword');

      String? user = await getUserId ();
      print(user);
      int zero = 0;
      expect('u7rtYONFgpPX2M3KMTOwlBnY8ym2', user);

      print("completed");
    });


    // Build our app and trigger a frame.fly


  });
*/


}




criarprestador () async{
  WidgetsFlutterBinding.ensureInitialized();

  final FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  await firestore.collection('workers').doc(await getUserId()).set({
    'name': 'Gabriel',
    'phone': '2913123',
    'workingHours': '2333244',
    'description': 'asdasdsad',
    'profilePicture': 'foto1',
    'comments': 'dsdfsdf',
    'cities': 'colatina',
    'roles': 'pedreiro pinto ',
    'numberClicksOnWhatsApp': 3,
    'dueDatePlan': DateTime.now(),
    'openAccountDate': DateTime.now(),
    'brazilianIDPicture':  'getUrlToImageFirebase()',
    'IdPrestador': await getUserId(),
    'planType': 0,
    'numberClicksOnProfile':0,
  }
  );
}
//u7rtYONFgpPX2M3KMTOwlBnY8ym2

Future<String?> getUserId() async {
  WidgetsFlutterBinding.ensureInitialized();
  final FirebaseAuth auth = FirebaseAuth.instance;
  final User? user = await auth.currentUser;
  final userId = user?.uid.toString();
  print(userId);
  return userId;
}



Future<User?> logInUser (String email, String password) async {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  UserCredential userCredential = await firebaseAuth.signInWithEmailAndPassword(email: email, password: password);

}