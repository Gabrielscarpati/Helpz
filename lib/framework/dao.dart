import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../util/resposta_processamento.dart';
import 'dataModel.dart';
import 'dataModelBuilder.dart';

abstract class Dao<DM extends DataModel>{
  final String tableName;
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Dao({required this.tableName});

  Future<String> getUserId() async {
    return await _firebaseAuth.currentUser!.uid;
  }

  FirebaseFirestore? _instance;
  Future<DM?> getDataModel(String id);

  Future<List<DM>> getDataModels();

  Future<RespostaProcessamento> saveDataModel(DM dataModel);

  Future<RespostaProcessamento> removeDataModel(DM dataModel);

  Future<DocumentSnapshot<Object?>?> getDataFromFirebase() async {
    _instance = FirebaseFirestore.instance;
    CollectionReference dadosPrestador = _instance!.collection(tableName);

    DocumentSnapshot json = await dadosPrestador.doc().get();

    return json;
  }
}

/*
class Dao{
  final String tableName;
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<String> getUserId() async{
    return await _firebaseAuth.currentUser!.uid;
  }

  FirebaseFirestore? _instance;

  Future<Map?> getDataModelFromFirebase() async {

    _instance = FirebaseFirestore.instance;
    CollectionReference dadosPrestador = _instance!.collection(tableName);

    DocumentSnapshot json = await dadosPrestador.doc(await getUserId()).get();

    var createDataModel = DataModelBuilder().createDataModel(json);
    createDataModel;
  }

  Dao({required this.tableName});
}
*/
