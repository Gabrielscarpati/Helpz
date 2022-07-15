import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ViewHeaderSelectServicos extends StatelessWidget {
  ViewHeaderSelectServicos({
    Key? key,

  });


  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        TextField(
          //controller: viewModel.controlerFieldPesquisa,
          onChanged: (value) {

          },
          decoration: new InputDecoration(
            filled: true,

            fillColor: Colors.white,
            prefixIcon: new Icon(Icons.search,
              color: Colors.blue.shade800,
            ),
            labelText: "Pesquise por serviço",
              labelStyle: TextStyle(
                color: Colors.blue.shade800,
              ),
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              borderSide: const BorderSide(
                color: Colors.blueAccent,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              borderSide: BorderSide(color: Colors.blue),
            ),
          ),
        )
      ],
    );
  }
}
