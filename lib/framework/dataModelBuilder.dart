import 'package:cloud_firestore/cloud_firestore.dart';
import 'dataModel.dart';

abstract class DataModelBuilder<DM extends DataModel> {
  DM? createDataModel(Map<String, dynamic> json);

  Map<String, dynamic>? createJson(DM? dataModel);

  /*Fazer funcao pra setar os valores do sign up Usuaio*/
}
