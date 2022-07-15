import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'listItemListaPrestadoresDeServico.dart';

class ListViewListaPrestadoresDeServico extends StatelessWidget {
  const ListViewListaPrestadoresDeServico({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 8,
        itemBuilder: (BuildContext context, int index) {
          return ListItemListaPrestadoresDeServico();
        });
  }
}
