import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:projeto_treinamento/businessModels/businessModelDadosPrestador.dart';

class SetPrestadorInformationCompleta {
  String name;
  String phone;
  String workingHours;
  String description;
  String profilePicture;
  List<dynamic> comentarios;
  List<String> cidades;
  List<int> servicos;
  int numeroDeCliquesNoLigarOuWhatsApp;
  DateTime dataVencimentoPlano;
  DateTime dataAberturaConta;
  String brazilianIDPicture;
  int planoPrestador;

  SetPrestadorInformationCompleta({
    required this.name,
    required this.phone,
    required this.workingHours,
    required this.description,
    required this.profilePicture,
    required this.comentarios,
    required this.cidades,
    required this.servicos,
    required this.numeroDeCliquesNoLigarOuWhatsApp,
    required this.dataVencimentoPlano,
    required this.dataAberturaConta,
    required this.brazilianIDPicture,
    required this.planoPrestador,
  });
}