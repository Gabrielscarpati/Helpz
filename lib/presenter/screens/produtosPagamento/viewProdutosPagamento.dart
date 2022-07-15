import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helpz/presenter/screens/produtosPagamento/views/viewHubProdutosPagamento.dart';

import '../../components/circularProgressIndicatorPersonalizado.dart';

class ViewProdutosPagamento
    extends StatelessWidget{
  ViewProdutosPagamento({Key? key,}) : super(key: key,);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(context),
    );
  }
  int viewModel =2;

  _buildBody(BuildContext context) {
    if (viewModel == null) {
      return Center(
        child: CircularProgressIndicatorPersonalizado(),
      );
    } else {
      return ViewBodyProdutosPagamento();
    }
  }
}
