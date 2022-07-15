
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helpz/presenter/screens/logIn_SingUpUsuario/logInUsuario/views/logInBodyUsuario.dart';

class LogInUsuaioScreen extends StatelessWidget {
   LogInUsuaioScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LogInBodyUsuario(),
    );
  }
}

