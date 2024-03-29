import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helpz/presenter/screens/hubUsuario/views/viewHubCidade.dart';
import 'package:helpz/presenter/screens/hubUsuario/views/viewHubGridView.dart';
import 'package:helpz/presenter/screens/hubUsuario/views/viewHubPrestador.dart';
import 'package:helpz/presenter/screens/hubUsuario/views/viewHubServicos.dart';

import '../../../../util/colors/colorGradient.dart';
import '../../../../util/colors/colors.dart';


class ViewHubBodyUsuario extends StatelessWidget {
  ViewHubBodyUsuario({
    Key? key,

  });

  @override
  Widget build(BuildContext context) {

    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecorationGradient(context),
      child: Column(
        children: [
          ViewHubUsuarioHeader(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      blurRadius: 15,
                      color: Colors.blue.shade900,
                      spreadRadius: 1)
                ],
                color: BackgroundColorGrey,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 12, left: 12, top: 8),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ViewHubCidade(),
                            SizedBox(height: 16,),
                      ViewHubServicos(),
                      SizedBox(height: 16,),
                      ViewHubGridView(),

                          SizedBox(height: 16,),
                                      Container(
                          height: 50,
                          margin: EdgeInsets.symmetric(horizontal: 50),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                child: Ink(
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Colors.blue.shade900,
                                          Colors.blue.shade500,
                                          Colors.blue.shade400
                                        ],
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                      ),
                                      borderRadius: BorderRadius.circular(30.0)),
                                  child: Container(
                                    constraints: BoxConstraints(maxWidth: 200.0, minHeight: 50.0),
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Deslogar',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                onPressed: () {

                                },

                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.all(0),
                                  shape: new RoundedRectangleBorder(
                                    borderRadius: new BorderRadius.circular(30.0),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
