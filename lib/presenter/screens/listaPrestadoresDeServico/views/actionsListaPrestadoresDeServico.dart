import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ActionsListaPrestadoresDeServico extends StatelessWidget {
  const ActionsListaPrestadoresDeServico({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {
            //  this.viewActions.refreshDadosDaTela(this.viewModel);
            }),
      ],
    );
  }
}
