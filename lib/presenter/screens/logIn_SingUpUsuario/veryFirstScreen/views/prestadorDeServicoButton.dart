import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../controllers/irProximaTela.dart';
import '../../../../components/buttons/standardButton.dart';
import '../../../logIn_SingUpPrestador/loginOrSignUpPrestadorServico/viewLogInOrSignUpPrestadorServico.dart';


class PrestadorDeServicoButton extends StatelessWidget {
 PrestadorDeServicoButton({Key? key}) : super(key: key);

  Widget build(BuildContext context) {

    IrProximaTela irProximaTela = IrProximaTela(context: context, ProximaTela: ViewLogInOrSignUpPrestadorServico());
    return StandardButton(
      text: 'Prestar serviços', 
       function: (){ 
        irProximaTela.irProximaTela();
      },
    );
  }
}
