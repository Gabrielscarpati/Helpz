import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helpz/presenter/screens/listaPrestadoresDeServico/views/actionsListaPrestadoresDeServico.dart';
import 'package:helpz/presenter/screens/listaPrestadoresDeServico/views/bodyListaPrestadoresDeServico.dart';
import 'package:helpz/presenter/screens/listaPrestadoresDeServico/views/titleListaPrestadoresDeServico.dart';

import '../../../util/colors/colors.dart';
import '../../components/circularProgressIndicatorPersonalizado.dart';

class ViewListaPrestadoresDeServico extends StatelessWidget {
  const ViewListaPrestadoresDeServico({Key? key,}) : super(key: key,);

  @override
  Widget build(BuildContext context) {
    int viewModel = 0;
    if (viewModel == null) {
      return Scaffold(
        body: Center(
          child: CircularProgressIndicatorPersonalizado(),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: TitleListaDePrestadoresDeServico(),
          actions: [ActionsListaPrestadoresDeServico()],
          backgroundColor: ColorAppBar,
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
        body: BodyListaPrestadoresDeServico(),
      );
    }
  }
}
