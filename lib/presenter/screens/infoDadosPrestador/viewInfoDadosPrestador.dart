import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helpz/presenter/screens/infoDadosPrestador/views/InfoDadosPrestadorBody.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../util/colors/colors.dart';
import '../../components/circularProgressIndicatorPersonalizado.dart';
import '../logIn_SingUpUsuario/veryFirstScreen/viewVeryFirstScreen.dart';

class ViewInfoDadosPrestador
    extends StatelessWidget{
  ViewInfoDadosPrestador({Key? key,}) : super(key: key,);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorAppBar,
        title: Text(
          'Edite o seu perfil',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(MdiIcons.arrowLeft, color: Colors.white,),

          onPressed: () async{
            if(await FirebaseAuth.instance.currentUser?.email == null){

                Navigator.pushAndRemoveUntil(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                    return ViewVeryFirstScreen();
                  },
                  ),
                      (route)=> false,);
            }

           // Navigator.pop(context, viewModel);
          },
        ),
      ),
      body: _buildBody(context),
      bottomNavigationBar: BottomAppBar(
        child: Text(''),/*Padding(
          padding: const EdgeInsets.all(12.0),
          child: viewModel != null
              ? ButtonSaveInfoDadosPrestador(
                  viewActions: viewActions,
                  viewModel: viewModel!,
                )
              : Text(""),
        ),*/
      ),
    );
  }

  int viewModel = 0;
  _buildBody(BuildContext context) {
    if (viewModel == null) {
      return Center(
        child: CircularProgressIndicatorPersonalizado(),
      );
    } else {
      return InfoDadosPrestadorBody();
    }
  }
}
