import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class IrProximaTelaENaoVoltar{
  final context;
  final Widget ProximaTela;
    void irProximaTela(){
      Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (BuildContext context) {
          return ProximaTela;
            },
             ),
            (route)=> false,);
    }
    IrProximaTelaENaoVoltar({
      required this.context,
      required this.ProximaTela
    });
}


