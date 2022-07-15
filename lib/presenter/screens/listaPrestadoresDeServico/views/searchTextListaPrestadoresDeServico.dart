import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchTextListaPrestadoresDeServico extends StatelessWidget {

  const SearchTextListaPrestadoresDeServico({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      //controller: viewModel.controlerFieldPesquisa,
      onChanged: (text) {
        //this.viewActions.aplicaFiltroPesquisa(this.viewModel);
      },
      decoration: new InputDecoration(
        prefixIcon: new Icon(Icons.search),
        labelText: "Pesquisa prestador de serviço",
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: const BorderSide(
            color: Colors.grey,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(color: Colors.blue),
        ),
      ),
    );
  }
}
