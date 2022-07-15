import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../util/colors/colors.dart';
import 'changePerfilPrestadorDeServico.dart';

class HeaderPerfilPrestadorDeServico extends StatelessWidget {
  HeaderPerfilPrestadorDeServico({Key? key,});


@override
Widget build(BuildContext context) {
  return Column(
    children: [
      Container(
        color: BackgroundColorGrey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ChangePerfilPrestadorDeServico(

                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}

}
