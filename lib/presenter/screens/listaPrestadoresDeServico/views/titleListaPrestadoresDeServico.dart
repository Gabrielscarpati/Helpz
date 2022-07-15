import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TitleListaDePrestadoresDeServico extends StatelessWidget {
  const TitleListaDePrestadoresDeServico({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(Icons.work),
        Text(
          'viewModel.tiposDeServico.descricao,',
          style: TextStyle(color: Colors.white),
        ),
        Text(
          "("   '+ viewModel.listaVisivel.length.toString() +'      ")",
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
