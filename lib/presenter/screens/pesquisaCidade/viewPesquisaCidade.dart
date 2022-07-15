import 'package:flutter/cupertino.dart';//
import 'package:flutter/material.dart';//
import 'package:helpz/presenter/screens/pesquisaCidade/views/viewListaPesquisaCidades.dart';
import '../../../util/colors/colors.dart';
import '../../components/circularProgressIndicatorPersonalizado.dart';
import 'views/viewHeaderPesquisaCidade.dart';

class ViewPesquisaCidade extends StatelessWidget {
  ViewPesquisaCidade({Key? key,}) : super(key: key,);

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: _buildBody(context),
      );
    }

    int viewModel = 3;
  _buildBody(BuildContext context) {
    if (viewModel == null) {
      return Center(
        child: CircularProgressIndicatorPersonalizado(),
      );
    } else {
      return Scaffold(
        appBar:

        AppBar(
            iconTheme: IconThemeData(
              color: Colors.white, size: 30, //change your color here
            ),
            toolbarHeight: 70,
            title: Text("Selecione a cidade em que \nnservico sera preatado", style: TextStyle(color: Colors.white),),
            centerTitle: true,
          backgroundColor: ColorAppBar,
        ),
        body: Container(
          color: BackgroundColorGrey,
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                borderOnForeground: true,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                    child: ViewHeaderSelectCidadea(),
                    ),
                  ),
              Flexible(
                flex: 2,
                child:

                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text(
                          "Selecione uma cidade:", textAlign: TextAlign.start,
                          style: Theme.of(context).textTheme.headline3!.copyWith(
                              fontSize:
                              Theme.of(context).textTheme.bodyText2!.fontSize),
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 39,
                child: ViewListaPesquisaCidade(),
              )
            ],
          ),
        ),
      );
    }
  }
}
