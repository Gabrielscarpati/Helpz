import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ViewHeaderPesquisaTipoServico extends StatelessWidget {
  ViewHeaderPesquisaTipoServico({Key? key,});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          //controller: viewModel.controlerFieldPesquisa,
          onChanged: (text) {
           // this.viewActions.aplicaFiltroPesquisa(this.viewModel);
          },
          decoration: new InputDecoration(
            filled: true,

            fillColor: Colors.white,
            prefixIcon: new Icon(Icons.search,
              color: Colors.blue.shade800,
            ),
            labelText: "Pesquisa prestador de serviço",
            labelStyle: TextStyle(
              color: Colors.blue.shade800,
            ),
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(24.0)),
              borderSide: const BorderSide(
                color: Colors.blueAccent,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(24.0)),
              borderSide: BorderSide(color: Colors.blue),
            ),
          ),
        )
      ],
    );
  }
}
