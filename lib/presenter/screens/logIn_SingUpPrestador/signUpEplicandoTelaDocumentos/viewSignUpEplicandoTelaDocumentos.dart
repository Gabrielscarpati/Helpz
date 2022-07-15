import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helpz/presenter/screens/logIn_SingUpPrestador/signUpEplicandoTelaDocumentos/views/bodySingUpScreenInstitution.dart';

class ViewsignUpEplicandoTelaDocumentos extends StatelessWidget {

  const ViewsignUpEplicandoTelaDocumentos({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BodyViewsignUpEplicandoTelaDocumentos(),

    );
  }
}
