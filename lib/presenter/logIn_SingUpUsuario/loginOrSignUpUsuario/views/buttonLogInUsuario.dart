import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../controllers/irProximaTela.dart';
import '../../../../ultil/widgets/standardButton.dart';
import '../../logInUsuario/logInUsuaioScreen.dart';



class ButtonLogInUsuario extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    IrProximaTela irProximaTela = IrProximaTela(context: context, ProximaTela: LogInUsuaioScreen());
    return StandardButton(
      text:  'Log In',
      function: (){
        irProximaTela.irProximaTela();
      },
    );
  }
}

