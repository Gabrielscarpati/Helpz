import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:helpz/infra/daos/Prestador/dataModelPrestador.dart';
import '../../../framework/dataModelBuilder.dart';

class DataModelBuilderPrestador extends DataModelBuilder<DataMoldelPrestador>{
  DataMoldelPrestador createDataModel(DocumentSnapshot<Object?> json){
    return DataMoldelPrestador(
      IdPrestador: json['IdPrestador'],
      name: json['name'],
      phone: json['phone'],
      workingHours: json['workingHours'],
      description: json['description'],
      profilePicture: json['profilePicture'],
      city: List<String>.from(json['city']),
      roles: List<int>.from(json['roles']),
      numeroDeCliquesNoLigarOuWhatsApp: json['numeroDeCliquesNoLigarOuWhatsApp'],
      dataVencimentoPlano: json['dataVencimentoPlano'].toDate(),
      dataAberturaConta: json['dataAberturaConta'].toDate(),
      tipoPlanoPrestador: json['tipoPlanoPrestador'],
      numeroDePessoasViramPerfilDessePrestador: json['numeroDePessoasViramPerfilDessePrestador'],
    );
  }

  @override
  Map<String, dynamic>? createJson(DataMoldelPrestador? dataModel) {
    // TODO: implement createJson
    throw UnimplementedError();
  }

}