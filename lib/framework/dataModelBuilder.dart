import 'package:cloud_firestore/cloud_firestore.dart';
import 'dataModel.dart';

abstract class DataModelBuilder <DM extends DataMoldel >{
  DM? createDataModel(DocumentSnapshot<Object?>json){
  }

  /*Fazer funcao pra setar os valores do sign up Usuaio*/
}