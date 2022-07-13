import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../controllers/voltarTelaContoller.dart';



class BackArrowLogInOrSignUpPrestadorServico extends StatelessWidget {
  const BackArrowLogInOrSignUpPrestadorServico({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    VoltarTelaController voltarTela = VoltarTelaController(context: context);
    return TextButton.icon(onPressed: () {
      voltarTela.voltarTela();
    } ,
      icon:  Icon(Icons.arrow_back, color: Color(0xff4cf2c7), size: 30.0),
      label: Text(''),
    );
  }
}
