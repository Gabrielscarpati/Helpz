import 'package:helpz/framework/dataModel.dart';

class DataMoldelPrestador extends DataModel {
  DataMoldelPrestador({
    required this.IdPrestador,
    required this.name,
    required this.phone,
    required this.workingHours,
    required this.description,
    required this.profilePicture,
    required this.city,
    required this.roles,
    required this.numeroDeCliquesNoLigarOuWhatsApp,
    required this.dataVencimentoPlano,
    required this.dataAberturaConta,
    required this.tipoPlanoPrestador,
    required this.numeroDePessoasViramPerfilDessePrestador,
  });

  String IdPrestador;
  String name;
  String phone;
  String workingHours;
  String description;
  String profilePicture;
  List<String> city;
  List<int> roles;
  int numeroDeCliquesNoLigarOuWhatsApp;
  DateTime dataVencimentoPlano;
  DateTime dataAberturaConta;
  int tipoPlanoPrestador;
  int numeroDePessoasViramPerfilDessePrestador;
}
