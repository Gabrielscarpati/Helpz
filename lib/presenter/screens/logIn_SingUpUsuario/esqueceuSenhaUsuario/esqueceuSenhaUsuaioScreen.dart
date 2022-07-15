
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helpz/presenter/screens/logIn_SingUpUsuario/esqueceuSenhaUsuario/views/esqueceuSenhaUsuarioBody.dart';


class EsqueceuSenhaUsuarioScreen extends StatelessWidget {
  EsqueceuSenhaUsuarioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EsqueceuSenhaUsuarioBody(),
    );
  }
}

