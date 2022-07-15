import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helpz/presenter/screens/hubUsuario/views/viewHubBody.dart';

import '../../components/splashScreen.dart';

class ViewHubUsuario extends StatelessWidget {
  ViewHubUsuario({
    Key? key,

  }) : super(key: key,);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(context),
    );
  }
  int viewModel = 2;

  _buildBody(BuildContext context) {
    if (viewModel == null) {
      return Center(
        child: SplashScreen(),
      );
    } else {
      return ViewHubBodyUsuario();
    }
  }
}
