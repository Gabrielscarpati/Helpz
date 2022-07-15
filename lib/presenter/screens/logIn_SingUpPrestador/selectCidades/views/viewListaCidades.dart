import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:substring_highlight/substring_highlight.dart';


class ViewListSelectCity extends StatefulWidget {

  ViewListSelectCity({


    Key? key,
  });

  @override
  State<ViewListSelectCity> createState() => _ViewListSelectCityState();
}


class _ViewListSelectCityState extends State<ViewListSelectCity> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: 9,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Colors.white,
            child: ListTile(
                onTap: () {
                },
                title: SubstringHighlight(
                      text: 'widget.viewModel.listaVisivel[index].nome',
                      caseSensitive: false,
                      overflow: TextOverflow.ellipsis,
                      //term: widget.viewModel.controlerFieldPesquisa.text,
                      textAlign: TextAlign.left,
                      textStyleHighlight: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        backgroundColor: Theme.of(context).textTheme.headline2!.backgroundColor,
                      ),
                      words: false,
                ),

                leading: Icon(Icons.location_city)),
          );
        });
  }
}
