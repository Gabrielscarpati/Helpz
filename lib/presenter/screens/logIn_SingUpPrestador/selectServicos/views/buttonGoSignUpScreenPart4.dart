import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

import '../../../../components/popUps/popUpListaSelectServicos.dart';


class ButtonGoSignUpScreenSelectServicos extends StatelessWidget {
   ButtonGoSignUpScreenSelectServicos({Key? key,

  }) : super(key: key);
  final RoundedLoadingButtonController _btnController = RoundedLoadingButtonController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 50),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          RoundedLoadingButton(
            controller: _btnController,
            child: Ink(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.blue.shade900,
                      Colors.blue.shade500,
                      Colors.blue.shade400
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius:
                  BorderRadius.circular(30.0)),
              child: Container(
                constraints: BoxConstraints(
                    maxWidth: 350.0, minHeight: 50.0),
                alignment: Alignment.center,
                child: Text(
                  'Continuar',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            onPressed: () {

            },
          )
        ],
      ),
    );
  }
  Future mostrarErroEmailInvalido(context) => showDialog(
    context: context,
    builder: (context) => PopUpListaSelectServicos(),
  );
}
