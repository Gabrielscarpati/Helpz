import 'package:flutter/cupertino.dart';

import 'headerPerfilPrestadorDeServico.dart';

class PerfilPrestadorDeServicoBody extends StatelessWidget {
  const PerfilPrestadorDeServicoBody({Key? key,}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderPerfilPrestadorDeServico(),
        ],
      ),
    );
  }
}
