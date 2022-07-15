import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helpz/presenter/screens/infoPrestadorDeServico/views/viewInfoPrestadorDeServicoDados.dart';
import '../../../../util/colors/colors.dart';
import 'listViewListaAvaliacoesPrestadorDeServico.dart';

class ViewInfoPrestadorDeServicoBody extends StatelessWidget {
  ViewInfoPrestadorDeServicoBody({Key? key,});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: BackgroundColorGrey,
      child: Column(
        children: [
          ViewInfoPrestadorDeServicoDados(),
          Expanded(
            child: ListViewListaAvaliacaoPrestadorDeServico(),
          ),
        ],
      ),
    );
  }
}
