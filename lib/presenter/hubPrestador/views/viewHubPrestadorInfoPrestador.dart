import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/platform/platform.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:projeto_treinamento/businessModels/businessModelAvaliacaoPrestadorDeServico.dart';
import 'package:projeto_treinamento/features/hubPrestador/viewModelHub.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../../../util/libraryComponents/popUps/popUpWhatsAppNaoestaIntalado.dart';
import '../../../../widgets/custom_rating_bar.dart';

class ViewHubPrestadorInfoPrestador extends StatelessWidget {

  const ViewHubPrestadorInfoPrestador({
    Key? key,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double? alturaEntreAsAvaliacoes = 4;
    double _screenWidth = MediaQuery.of(context).size.width;
    String cidades = "";

    String tiposServico = "";

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        titleSpacing: 0,
        title: viewModel == null
            ? CircularProgressIndicatorPersonalizado()
            : Text(viewModel.prestadorDeServicos.nome,
                style: TextStyle(color: Colors.white)),
        backgroundColor: ColorAppBar,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        _infoDoPrestadorDeServicoCidadeServico(context,
                                            Icons.location_on, cidades),
                                        SizedBox(height: 6),
                                        _infoDoPrestadorDeServico(
                                            context,
                                            Icons.phone,
                                            this
                                                .viewModel
                                                .prestadorDeServicos
                                                .telefone),
                                        SizedBox(height: 6),
                                        _infoDoPrestadorDeServicoCidadeServico(
                                            context,
                                            Icons.account_box,
                                            tiposServico),


                                        SizedBox(height: 6),
                                        _infoDoPrestadorDeServico(
                                            context,
                                            Icons.description,
                                            'DESCRIÇÃO'),
                                        SizedBox(height: 6),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 16.0, top: 16.0, bottom: 16.0),
                                  child: Hero(
                                    tag: viewModel.prestador.IdPrestador,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      foregroundColor: Colors.black,
                                      backgroundImage: NetworkImage(this
                                          .viewModel
                                          .prestador
                                          .profilePicture),
                                      radius: 40.0,
                                      child: Text("",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20.0)),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        ConstrainedBox(
                            constraints: BoxConstraints(
                              minHeight: 50,
                              minWidth: 100,
                              maxHeight: 206,
                              maxWidth: MediaQuery.of(context).size.width * .92,
                            ),
                            child: Container(
                              child: Text(this.viewModel.prestador.description),
                            )),
                        _botoes(context),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            this
                                                .viewModel
                                                .prestadorDeServicos
                                                .nota
                                                .toStringAsPrecision(2),
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline6!
                                                .copyWith(
                                                    fontWeight: FontWeight.bold,
                                                    color: Theme.of(context)
                                                        .textTheme
                                                        .headline5!
                                                        .color,
                                                    fontSize: 50),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 10.0),
                                            child: Text(
                                              " / 5",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline6!
                                                  .copyWith(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Theme.of(context)
                                                          .textTheme
                                                          .headline5!
                                                          .color,
                                                      fontSize: 20),
                                            ),
                                          ),
                                        ],
                                      ),
                                      CustomRatingBar(
                                        rating:
                                            viewModel.prestadorDeServicos.nota,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        viewModel.prestadorDeServicos
                                                .totalDeAvaliacoes
                                                .toString() +
                                            " avaliações",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6!
                                            .copyWith(
                                                fontWeight: FontWeight.bold,
                                                color: Theme.of(context)
                                                    .textTheme
                                                    .caption!
                                                    .color,
                                                fontSize: 12),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      _barraDeAvaliacao(
                                          context,
                                          5,
                                          viewModel.prestadorDeServicos
                                              .totalDeAvaliacoesNota5),
                                      SizedBox(
                                        height: alturaEntreAsAvaliacoes,
                                      ),
                                      _barraDeAvaliacao(
                                          context,
                                          4,
                                          viewModel.prestadorDeServicos
                                              .totalDeAvaliacoesNota4),
                                      SizedBox(
                                        height: alturaEntreAsAvaliacoes,
                                      ),
                                      _barraDeAvaliacao(
                                          context,
                                          3,
                                          viewModel.prestadorDeServicos
                                              .totalDeAvaliacoesNota3),
                                      SizedBox(
                                        height: alturaEntreAsAvaliacoes,
                                      ),
                                      _barraDeAvaliacao(
                                          context,
                                          2,
                                          viewModel.prestadorDeServicos
                                              .totalDeAvaliacoesNota2),
                                      SizedBox(
                                        height: alturaEntreAsAvaliacoes,
                                      ),
                                      _barraDeAvaliacao(
                                          context,
                                          1,
                                          viewModel.prestadorDeServicos
                                              .totalDeAvaliacoesNota1),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Card(

                child: viewModel.listaAvaliacoesPrestadorDeServico.length == 0
                    ? Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Text(
                              'Ainda não há avaliações para esse prestador',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6!
                                  .copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Theme.of(context)
                                          .textTheme
                                          .caption!
                                          .color,
                                      fontSize: 16),
                            ),
                          ),
                        ),
                      )
                    : ListView.builder(
                        itemCount:
                            viewModel.listaAvaliacoesPrestadorDeServico.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ListItemAvaliacaoPrestadorDeServico(
                            viewActions: viewActions,
                            avaliacao: viewModel
                                .listaAvaliacoesPrestadorDeServico[index],
                          );
                        }),

            ),
          ),
        ],
      ),
    );
  }

  Widget _infoDoPrestadorDeServico(
      BuildContext context, IconData iconData, String texto) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.60,
      child: Row(
        children: [
          Icon(iconData),
          SizedBox(
            width: 8,
          ),
          Text(
            texto,
            textAlign: TextAlign.justify,
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }

  Widget _infoDoPrestadorDeServicoCidadeServico(
      BuildContext context, IconData iconData, String texto) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.60,
      child: Row(
        children: [
          Icon(iconData),
          SizedBox(
            width: 8,
          ),
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                texto,
                textAlign: TextAlign.justify,
                style: Theme.of(context).textTheme.caption,
              ),
            ],
          )),
        ],
      ),
    );
  }

  Widget _barraDeAvaliacao(
      BuildContext context, int index, int totalDeAvaliacoesNota) {
    return Row(
      children: [
        Text(
          index.toString(),
          style: Theme.of(context).textTheme.headline6!.copyWith(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).textTheme.caption!.color,
              fontSize: 16),
        ),
        SizedBox(
          width: 6,
        ),
        LienarPercentIndicatorWidget(
          rating: (totalDeAvaliacoesNota /
              (viewModel.prestadorDeServicos.totalDeAvaliacoes == 0
                  ? 1
                  : viewModel.prestadorDeServicos.totalDeAvaliacoes)),
          totalDeAvaliacoes: totalDeAvaliacoesNota,
        ),
        SizedBox(
          width: 6,
        ),
        SizedBox(
          width: 34,
          child: Text(
            (100 *
                        totalDeAvaliacoesNota ~/
                        (viewModel.prestadorDeServicos.totalDeAvaliacoes == 0
                            ? 1
                            : viewModel.prestadorDeServicos.totalDeAvaliacoes))
                    .toString() +
                "%",
            style: Theme.of(context).textTheme.headline6!.copyWith(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).textTheme.caption!.color,
                fontSize: 16),
          ),
        ),
      ],
    );
  }

  Widget _botoes(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 140,
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xff9e9e9e)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ))),
              onPressed: () {
                //launchUrlString('tel:+55 ${this.viewModel.prestadorDeServicos.telefone}');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.phone, color: Colors.white),
                  Text("Ligar", style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
          ),
          SizedBox(
            // Colors.greenAccent
            width: 140,
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xff006400)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ))),
              onPressed: ()  {
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(MdiIcons.whatsapp, color: Colors.white),
                  Text("Whatsapp", style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget Avaliacao(BuildContext context,
      BusinessModelAvaliacaoPrestadorDeServico avaliacao) {

    double screenWidth = MediaQuery.of(context).size.width;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Text(
                    avaliacao.emailUsuario[0].toUpperCase(),
                    style: TextStyle(color: Colors.black87),
                  ),
                  backgroundColor: Colors.grey,
                ),
                SizedBox(width: 16),
                Text(avaliacao.emailUsuario),
                SizedBox(
                  width: 16,
                ),
                CustomRatingBar(
                  rating: avaliacao.nota.toDouble(),
                ),
              ],
            ),
            SizedBox(height: 8),
            SizedBox(width: 8),
            ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: 10,
                  minWidth: 100,
                  maxHeight: 206,
                  maxWidth: screenWidth * .90,
                ),
                child: Container(
                  child: Text(
                    avaliacao.comentario,
                    style: Theme.of(context).textTheme.caption,
                  ),
                )),
            SizedBox(height: 8),
            Text(/*'
              dia +
                  ' de ' +
                  "getMonth()"
                  ' de ' +
                  ano +
                  ' às ' +
                  horaMinSegundo',*/'',
              overflow: TextOverflow.ellipsis,
              softWrap: false,
              maxLines: 20,
              textAlign: TextAlign.justify,
              style: Theme.of(context).textTheme.caption,
            )
          ],
        ),
      ),
    );
  }


  Future whatsAppNaoIntalado(context) => showDialog(
        context: context,
        builder: (context) => PopUpWhatsAppNaoEstaIntalado(),
      );
}
