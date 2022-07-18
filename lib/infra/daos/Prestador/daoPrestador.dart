import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:helpz/framework/dataModel.dart';
import 'package:helpz/infra/daos/Prestador/dataModelBuilderPrestador.dart';
import 'package:helpz/infra/daos/Prestador/dataModelPrestador.dart';
import 'package:helpz/util/resposta_processamento.dart';
import '../../../framework/dao.dart';

class DaoPrestador extends Dao <DataMoldelPrestador>{
  DaoPrestador(): super(tableName:'dadosPrestador');

  @override
  Future<DataMoldelPrestador?> getDataModel(String id) async {

    DataMoldelPrestador dataMoldelPrestador;
    DocumentSnapshot<Object?>? dataFirebase = await getDataFromFirebase();
    if(dataFirebase == null) return null;

    dataMoldelPrestador = DataModelBuilderPrestador().createDataModel(dataFirebase);

    return dataMoldelPrestador;

  }

  @override
  Future<List<DataMoldelPrestador>> getDataModels() {
    // TODO: implement getDataModels
    throw UnimplementedError();
  }

  @override
  Future<RespostaProcessamento> removeDataModel(DataModel dataModel) {
    // TODO: implement removeDataModel
    throw UnimplementedError();
  }

  @override
  Future<RespostaProcessamento> saveDataModel(DataModel dataModel) {
    // TODO: implement saveDataModel
    throw UnimplementedError();
  }
}








