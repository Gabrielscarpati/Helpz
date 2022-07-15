import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../util/colors/colorGradient.dart';
import '../../../../util/colors/colors.dart';

class ViewBodyProdutosPagamento extends StatelessWidget {
  ViewBodyProdutosPagamento({
    Key? key,
  });


  @override
  Widget build(BuildContext context) {

    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecorationGradient(context),
      child: Column(
        children: [
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
                    children: [],
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
