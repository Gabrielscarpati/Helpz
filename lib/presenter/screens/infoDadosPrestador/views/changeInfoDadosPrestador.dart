import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../perfilPrestadorDeServico/views/customEditPrestadorInformation.dart';


class ChangeInfoDadosPrestador extends StatelessWidget {
  const ChangeInfoDadosPrestador({Key? key,}) : super(key: key);



  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomEditPrestadorInformationNome(
                        labelText: "Nome",
                        iconData: Icons.account_box,
                        item: 'this.viewModel.prestador.name',
                        hintText: 'Digite o seu Nome',
                        onEditionComplete: (String novoNome) {
                         // this.viewActions.onChangeName(novoNome, viewModel);
                        },
                      ),
                      Divider(),
                      CustomEditPrestadorInformationTelefone(
                        labelText: "Número",
                        iconData: Icons.phone,
                        item: 'this.viewModel.prestador.phone',
                        hintText: 'Digite o seu número',
                        onEditionComplete: (String novoTelefone) {
                         // this.viewActions.onChangeNumber(novoTelefone, viewModel);
                        },
                      ),
                      Divider(),

                      CustomEditPrestadorInformationHorasDeTrabaho(
                        labelText: "Horas que você trabalha",
                        iconData: (Icons.lock_clock),
                        item: 'this.viewModel.prestador.workingHours',
                        hintText: 'Digite aqui',
                        onEditionComplete: (String novoHorario) {
                          //this.viewActions.onChangeHoras(novoHorario, viewModel);
                        },
                      ),
                      Divider(),
                      CustomEditPrestadorInformationDescricao(
                        labelText: "Descrição",
                        iconData: Icons.description,
                        item: 'this.viewModel.prestador.description',
                        hintText: 'Faça uma descrição',
                        onEditionComplete: (String novaDesc) {
                          //this.viewActions.onChangeDescricao(novaDesc, viewModel);
                        },
                      ),
                      Divider(),
                    ],
                  ),
                ),
              ],
            ),
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
                        constraints:
                            BoxConstraints(maxWidth: 200.0, minHeight: 50.0),
                        alignment: Alignment.center,
                        child: Text(
                          'Sair da conta',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    onPressed: ()  {

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
    );
  }
}
