import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helpz/presenter/screens/perfilPrestadorDeServico/views/buttonSalvarPerfilPrestadorDeServico.dart';
import 'package:helpz/presenter/screens/perfilPrestadorDeServico/views/perfilPrestadorDeServicoBody.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';


class ViewPerfilPrestadorDeServico extends StatelessWidget {
  ViewPerfilPrestadorDeServico({
    Key? key,}) : super(key: key,);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Perfil',
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(MdiIcons.arrowLeft),
          onPressed: () {
            Navigator.pop(context,);
          },
        ),
      ),
      body: _buildBody(context),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ButtonSavePerfilPrestadorDeServico(/*viewActions: viewActions, viewModel: viewModel,*/),
        ),
      ),
    );
  }
  int viewModel = 3;

  _buildBody(BuildContext context) {
    if (viewModel == null) {
      return Center(
        child: CircularProgressIndicator(),
      );
    } else {
      return PerfilPrestadorDeServicoBody();
    }
  }
}
