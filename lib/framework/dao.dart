import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dataModelBuilder.dart';

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

