import 'package:flutter/cupertino.dart';
import 'package:helpz/presenter/screens/listaPrestadoresDeServico/views/searchTextListaPrestadoresDeServico.dart';

import '../../../../util/colors/colors.dart';
import 'listViewListaPrestadoresDeServico.dart';

class BodyListaPrestadoresDeServico extends StatelessWidget {

  const BodyListaPrestadoresDeServico({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: BackgroundColorGrey,
      child: Column(
        children: [
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: SearchTextListaPrestadoresDeServico(

              )),
          Expanded(
              child: ListViewListaPrestadoresDeServico(

          )),
        ],
      ),
    );
  }
}
