import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helpz/presenter/screens/infoPrestadorDeServico/views/viewInfoPrestadorDeServicoBody.dart';

import '../../../util/colors/colors.dart';
import '../../components/circularProgressIndicatorPersonalizado.dart';

class ViewInfoPrestadorDeServico extends StatelessWidget {
  ViewInfoPrestadorDeServico({Key? key,}) : super(key: key,);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        titleSpacing: 0,
        // automaticallyImplyLeading: false,
        //title: viewModel == null
            /*? CircularProgressIndicator()
            : ViewInfoPrestadorDeServicoHeader(
                viewActions: this.viewActions,
                viewModel: this.viewModel!,
              ),*/
        backgroundColor: ColorAppBar,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      body: _buildBody(context),
    );
  }
  /*
  AppBar(title: Text("Selecione uma cidade",
        style: TextStyle(color: Colors.white),),
          backgroundColor: ColorAppBar,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ), */



  _buildBody(BuildContext context) {
    int viewModel = 0;
    if (viewModel == null) {
      return Center(
        child: CircularProgressIndicatorPersonalizado( ),
      );
    } else {
      return Scaffold(
        /*
        appBar: AppBar(
          title: TitleInfoPrestadorDeServico(viewModel: this.viewModel!),
          actions: [ActionsInfoPrestadorDeServico(viewModel: this.viewModel!, viewActions: this.viewActions)],
        ),
         */
        body: ViewInfoPrestadorDeServicoBody( ),
      );
    }
  }
}
