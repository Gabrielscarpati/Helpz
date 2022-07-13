import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class IrProximaTela{
    final Widget ProximaTela;
    final context;

      irProximaTela(){
          Navigator.of(context).push(
           MaterialPageRoute(builder: (context) => ProximaTela));
    }
    IrProximaTela({
      required this.ProximaTela,
      required this.context,
    });
}