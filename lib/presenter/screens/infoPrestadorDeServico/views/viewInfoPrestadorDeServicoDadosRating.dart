import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../components/customRatingBar.dart';
import '../../../components/linearPercentIndicator.dart';
class ViewInfoPrestadorDeServicoDadosRating extends StatelessWidget {
  ViewInfoPrestadorDeServicoDadosRating({
    Key? key,});

  double alturaEntreAsAvaliacoes = 4;
  double tamanhoDoNumeroAvaliacoes = 8;
  double tamanhoDoNumeroQuantidadeDeAvaliacoes = 8;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'this.viewModel.prestadorDeServicos.nota.toStringAsPrecision(2)',
                  style: Theme.of(context).textTheme.headline6!.copyWith(fontWeight: FontWeight.bold, color: Theme.of(context).textTheme.headline5!.color, fontSize: 50),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Text(
                    " / 5",
                    style: Theme.of(context).textTheme.headline6!.copyWith(fontWeight: FontWeight.bold, color: Theme.of(context).textTheme.headline5!.color, fontSize: 20),
                  ),
                ),
              ],
            ),
            CustomRatingBar(
              rating: 4 /*viewModel.prestadorDeServicos.nota*/,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
             ' viewModel.prestadorDeServicos.totalDeAvaliacoes.toString() +' " avaliações",
              style: Theme.of(context).textTheme.headline6!.copyWith(fontWeight: FontWeight.bold, color: Theme.of(context).textTheme.caption!.color, fontSize: 12),
            ),
          ],
        ),
        SizedBox(
          width: 16,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _barraDeAvaliacao(context,),
            SizedBox(
              height: alturaEntreAsAvaliacoes,
            ),
            _barraDeAvaliacao(context,),
            SizedBox(
              height: alturaEntreAsAvaliacoes,
            ),
            _barraDeAvaliacao(context,),
            SizedBox(
              height: alturaEntreAsAvaliacoes,
            ),
            _barraDeAvaliacao(context,),
            SizedBox(
              height: alturaEntreAsAvaliacoes,
            ),
            _barraDeAvaliacao(context,),
          ],
        ),
      ],
    );
  }

  Widget _barraDeAvaliacao(BuildContext context,) {
    return Row(
      children: [
        Text(
          'index.toString()',
          style: Theme.of(context).textTheme.headline6!.copyWith(fontWeight: FontWeight.bold, color: Theme.of(context).textTheme.caption!.color, fontSize: 16),
        ),
        SizedBox(
          width: 6,
        ),
        LienarPercentIndicatorWidget(
          rating: 9,
          totalDeAvaliacoes: 2,
        ),
        SizedBox(
          width: 6,
        ),
         SizedBox(
            width: 34,
            child: Text(
               "90%",
              style: Theme.of(context).textTheme.headline6!.copyWith(fontWeight: FontWeight.bold, color: Theme.of(context).textTheme.caption!.color, fontSize: 16),
          ),
        ),
      ],
    );
  }
}
