import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_treinamento/alibTwo/ultil/widgets/standardButton.dart';
import 'package:projeto_treinamento/features/logIn_SingUpPrestador/loginOrSignUpPrestadorServico/viewLogInOrSignUpPrestadorServico.dart';

import '../../../../controllers/irProximaTela.dart';


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
