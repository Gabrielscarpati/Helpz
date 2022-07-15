import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ViewInfoPrestadorDeServicoHeader extends StatelessWidget {
  ViewInfoPrestadorDeServicoHeader({Key? key,});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text('viewModel.prestadorDeServicos.nome',
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
