import 'package:flutter/cupertino.dart';

class VoltarTelaController{
  final context;
    void voltarTela(){
      return Navigator.of(context).pop();
    }
    VoltarTelaController({required this.context});
}