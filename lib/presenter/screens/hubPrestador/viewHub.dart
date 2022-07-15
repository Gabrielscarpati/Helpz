import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helpz/presenter/screens/hubPrestador/views/viewHubBody.dart';

import '../../components/splashScreen.dart';

class ViewHubPrestador extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return _buildBody(context);
  }
  int viewModel = 3;
  _buildBody(BuildContext context) {
    if (viewModel == null) {
      return Center(
        child: SplashScreen(),
      );
    } else {
      return ViewHubBodyPrestador();
    }
  }
}
