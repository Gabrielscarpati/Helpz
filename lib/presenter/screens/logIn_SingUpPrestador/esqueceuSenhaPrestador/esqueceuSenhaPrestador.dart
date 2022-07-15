import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helpz/presenter/screens/logIn_SingUpPrestador/esqueceuSenhaPrestador/views/esqueceuSenhaPrestador.dart';


class EsqueceuSenhaPrestadorScreen extends StatelessWidget {
  EsqueceuSenhaPrestadorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EsqueceuSenhaPrestadorBody(),
    );
  }
}

