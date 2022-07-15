import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../controllers/irProximaTela.dart';
import '../../../../components/buttons/standardButton.dart';
import '../../loginOrSignUpUsuario/viewLogInOrSignUpUsuario.dart';

class UsuarioButton extends StatelessWidget {
 UsuarioButton({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    IrProximaTela irProximaTela = IrProximaTela(context: context, ProximaTela: ViewLogInOrSignUpUsuario());
    return StandardButton(
      text: 'Contratatar um prestador', 
      function: (){ 
        irProximaTela.irProximaTela();
      },
    );
  }
}
