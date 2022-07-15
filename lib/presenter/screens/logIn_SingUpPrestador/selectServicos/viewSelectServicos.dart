import 'package:flutter/cupertino.dart';//
import 'package:flutter/material.dart';//
import '../../../../util/colors/colorGradient.dart';
import '../../../../util/colors/colors.dart';
import '../../../components/circularProgressIndicatorPersonalizado.dart';
import 'views/buttonGoSignUpScreenPart4.dart';//
import 'views/viewHeaderSelectServicos.dart';
import 'views/viewListaServicos.dart';

class ViewSelectServicos extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(context),
    );
  }
int viewModel = 3;
  _buildBody(BuildContext context) {
    double _ScreenWidth = MediaQuery.of(context).size.width;
    if (viewModel == null) {
      return Center(
        child: CircularProgressIndicatorPersonalizado()
      );
    } else {
      return Scaffold(
        appBar: AppBar(
            leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();

              }, icon: Icon(Icons.arrow_back, color: Color(0xff4cf2c7), size: 28.0),
            ),

            toolbarHeight: 70,
            title: Text('Escolha um ou mais serviços\nque pretende prestar',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            centerTitle: true,
            flexibleSpace: Container(
              decoration: BoxDecorationGradient(context),
            )
        ),
        body: Container(
          color: BackgroundColorGrey,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Card(
                borderOnForeground: true,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: ViewHeaderSelectServicos(),
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    width: _ScreenWidth,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Selecione os serviços que você pretende prestar",
                          style: Theme.of(context).textTheme.headline3!.copyWith(
                              fontSize: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .fontSize),
                        ),
                        Text(
                          "Serviços selecionados:  ",
                          textAlign: TextAlign.start,
                          style: Theme.of(context).textTheme.headline3!.copyWith(
                              fontSize: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .fontSize),
                        ),
                        SizedBox(
                          height: 8,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: ListView(
                  // This next line does the trick.
                  scrollDirection: Axis.horizontal,
                ),
              ),
              Flexible(
                flex: 6,
                child: ViewListSelectCity(
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: ButtonGoSignUpScreenSelectServicos(),
          ),
        ),
      );
    }
  }
}
