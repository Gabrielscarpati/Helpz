import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:substring_highlight/substring_highlight.dart';

class listItemPesquisaTipoServico extends StatelessWidget {
  const listItemPesquisaTipoServico({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      child: InkWell(
        onTap: () {
         // Navigator.of(context).pop(this.tipoServico.codTipoServico);
        },
        child: ListTile(
            hoverColor: Theme.of(context).cardTheme.shadowColor,
            title: SubstringHighlight(
              text: 'this.tipoServico.descricao',
              caseSensitive: false,
              overflow: TextOverflow.ellipsis,
              terms: [],
              textAlign: TextAlign.left,
              textStyleHighlight: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                backgroundColor: Theme.of(context).textTheme.headline2!.backgroundColor,
              ),
              words: false,
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(" Prestadores nessa cidade"),
                // ???
              ],
            ),
            leading: Icon(Icons.work/*this.tipoServico.icone*/, color: Theme.of(context).iconTheme.color)),
      ),
    );
  }
}
