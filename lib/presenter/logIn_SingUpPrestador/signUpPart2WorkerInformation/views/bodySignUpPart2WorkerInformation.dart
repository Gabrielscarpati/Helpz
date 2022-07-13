import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import '../../../../../util/libraryComponents/popUps/popUpPorFavorSelecioneUmaImagem.dart';
import '../../../../ultil/colors/colorGradient.dart';
import 'widgets_for_signup.dart';
import 'backArrowSignUpPart2WorkerInformation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:path/path.dart';
import 'dart:io';
import 'package:get_it/get_it.dart';


class BodySignUpPart2WorkerInformation extends StatefulWidget {


  const BodySignUpPart2WorkerInformation({
    Key? key,
  }) : super(key: key);
  @override
  _BodySignUpPart2WorkerInformation createState() => _BodySignUpPart2WorkerInformation();
}

class _BodySignUpPart2WorkerInformation extends State<BodySignUpPart2WorkerInformation> {

  CollectionReference users = FirebaseFirestore.instance.collection('dadosPrestador');
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  FirebaseStorage firebaseStorage = FirebaseStorage.instance;



  final nameController = TextEditingController();
  final itemsAcceptedController = TextEditingController();
  final workingHoursController = TextEditingController();
  final phoneController = TextEditingController();
  final descriptionController = TextEditingController();
  final formKeyAuthentication = GlobalKey<FormState>();
  final RoundedLoadingButtonController _btnController = RoundedLoadingButtonController();

  File? _photo;


  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecorationGradient(context),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 34, 0, 4),
              child: Row(
                children: [
                  SizedBox(
                    child: BackArrowSignUpPart2WorkerInformation(),
                  ),
                  Text(
                    "Complete com seus dados",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                    child: Column(
                      children: [
                        Text(
                          'Clique aqui para escolher uma\nimagem de perfil',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
                          child: Stack(
                            children: [
                              Center(
                                child: GestureDetector(
                                  onTap: () {
                                    _showPicker(context);
                                  },
                                  child: CircleAvatar(
                                    radius: 62,
                                    backgroundColor: Colors.indigo,
                                    child: _photo != null
                                        ? ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(120),
                                            child: Image.file(
                                              _photo!,
                                              width: 120,
                                              height: 120,
                                              fit: BoxFit.fitHeight,
                                            ),
                                          )
                                        : Container(
                                            decoration: BoxDecoration(
                                                color: Colors.grey[200],
                                                borderRadius:
                                                    BorderRadius.circular(120)),
                                            width: 120,
                                            height: 120,
                                            child: Icon(
                                              Icons.photo_camera,
                                              size: 35,
                                              color: Colors.grey[800],
                                            ),
                                          ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Form(
                          key: formKeyAuthentication,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                NameWidget(nameController: nameController),
                                PhoneWidget(phoneController: phoneController),
                                WorkingHoursWidget(workingHoursController: workingHoursController,),
                                DescriptionWidget(
                                  descriptionController: descriptionController,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: screenHeight * .02),
                        // #login
                        Container(
                          height: 50,
                          margin: EdgeInsets.symmetric(horizontal: 50),
                          child: Column(
                            children: [

                              RoundedLoadingButton(
                                controller: _btnController,
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
                                      borderRadius:
                                          BorderRadius.circular(30.0)),
                                  child: Container(
                                    constraints: BoxConstraints(
                                        maxWidth: 350.0, minHeight: 50.0),
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Continuar',
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
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              child: new Wrap(
                children: <Widget>[
                  new ListTile(
                      leading: new Icon(Icons.photo_library),
                      title: new Text('Gallery'),
                      onTap: () {
                        Navigator.of(context).pop();
                      }),
                  new ListTile(
                    leading: new Icon(Icons.photo_camera),
                    title: new Text('Camera'),
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }

  Future popUpPorFavorSelecioneUmaFoto(context) => showDialog(
    context: context,
    builder: (context) => PopUpPorFavorSelecioneUmaFoto(),
  );
}



