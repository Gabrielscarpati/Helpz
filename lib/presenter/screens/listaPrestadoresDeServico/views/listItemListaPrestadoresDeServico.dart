import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:substring_highlight/substring_highlight.dart';

import '../../../../infra/daos/firebase/updateInformationFirebase.dart';
import '../../../components/customRatingBar.dart';

class ListItemListaPrestadoresDeServico extends StatelessWidget {

  const ListItemListaPrestadoresDeServico({
    Key? key,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {

          },
        child: ListTile(
          leading: Hero(
            tag: 'prestradorDeServico.codPrestadorServico',
            child: CircleAvatar(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              backgroundImage: NetworkImage('https://firebasestorage.googleapis.com/v0/b/quickfix-589ac.appspot.com/o/20ff9e62-8103-446e-86fd-c7b498ccf2ee8137773343749861461.jpg2022-06-20%2013%3A24%3A39.631378?alt=media&token=e1a0548e-ee01-420e-82a3-3861c420a846'),
              radius: 20.0,
              child: Text("", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
            ),
          ),
          title: SubstringHighlight(
            text: 'prestradorDeServico.nome',
            caseSensitive: false,
            overflow: TextOverflow.ellipsis,
            terms: [],
            textAlign: TextAlign.left,
            textStyleHighlight: TextStyle(
              color: Colors.black,
              backgroundColor: Colors.yellow,
            ),
            words: false,
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('prestradorDeServico.telefone'),
              // ???
            ],
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomRatingBar(
                rating: 6,
              ),
              SizedBox(width: 5),
              Text("("   ")"),
              SizedBox(width: 20),
              //prestradorDeServico.statusOnline ? Icon(this.iconeStatusOnline, color: Colors.green) : Icon(this.iconeStatusOnline, color: Colors.red),
            ],
          ),
        ),
      ),
    );
  }
}
