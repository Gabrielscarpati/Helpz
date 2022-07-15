import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../controllers/irProximaTela.dart';
import '../../../../components/buttons/standardButton.dart';
import '../../signUpUsuario/signUpScreen.dart';


class ButtonSignUpUsuario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    IrProximaTela irProximaTela = IrProximaTela(context: context, ProximaTela: ViewSignUpUsuario());
    return StandardButton(
      text:  'Cadastre-se aqui',
      function: () {
        irProximaTela.irProximaTela();
       },
     );
   }
}
