import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helpz/presenter/screens/pesquisaTipoServico/views/viewPesquisaTipoServicoBody.dart';

import '../../../util/colors/colors.dart';

class ViewPesquisaTipoServico extends StatelessWidget {
  ViewPesquisaTipoServico({Key? key,}) : super(key: key,);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:   AppBar(title: Text("Selecione o tipo de serviço",
        style: TextStyle(color: Colors.white),),
        backgroundColor: ColorAppBar,
        iconTheme: IconThemeData(
          color: Colors.white,size: 30
        ),
      ),
      body: _buildBody(context),
    );
  }
  int viewModel = 2;
  _buildBody(BuildContext context) {
    if (viewModel == null) {
      return Center(
        child: CircularProgressIndicator(),
      );
    } else {
      return Center(
          child: ViewPesquisaTipoServicoBody(context,));
    }
  }
}