import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:helpz/presenter/screens/hubPrestador/views/hubPrestadorDadosPrestador.dart';
import 'package:helpz/presenter/screens/logIn_SingUpUsuario/veryFirstScreen/viewVeryFirstScreen.dart';

final navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  final getIt = GetIt.instance;


  runApp(MyApp());
}

GoogleSignInAccount? _usuarioAtual;

FacebookAuth? _facebookAuthUsuarioAtual;

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: MaterialColor(
          0xffF0F0F0,
          <int, Color>{
            50: Color(0xFFE1F5FE),
            100: Color(0xFFB3E5FC),
            200: Color(0xFF81D4FA),
            300: Color(0xFF4FC3F7),
            400: Color(0xFF29B6F6),
            500: Color(0xffF0F0F0),
            600: Color(0xFF039BE5),
            700: Color(0xFF0288D1),
            800: Color(0xFF0277BD),
            900: Color(0xFF01579B),
          },
        ),
        brightness: Brightness.light,
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              primary: Color(0xffF0F0F0), //change background color of button
              onPrimary: Theme.of(context)
                  .textTheme
                  .headline4!
                  .color, //change text color of button
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            )),
      ),
      home: StreamBuilder(
         // stream: AuthService().firebaseAuth.authStateChanges(),
          builder: (context, AsyncSnapshot snapshot) {
            return ViewVeryFirstScreen();
          }),
      //SingUpPart2WorkerInformation(),
      //SignUpPart1(),
      //ViewPesquisaCidadeBodya(),=
      //ViewSignUpPart3ChooseCity()
      //ViewVeryFirstScreen()
      //PresenterHub.presenter()
      //PresenterHub.presenter()
      //ViewVeryFirstScreen()
    );
  }
}

class ViewSelecionaHub extends StatefulWidget {
  const ViewSelecionaHub({Key? key}) : super(key: key);
  @override
  _ViewSelecionaHubState createState() => _ViewSelecionaHubState();
}

class _ViewSelecionaHubState extends State<ViewSelecionaHub> {
 /* Future<String> getPrestador() async {
    BusinessModelDadosPrestador _prestador =
    await Prestador().getPrestadorLogado();
    return _prestador.workingHours;
  }
*/
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
        //future: getPrestador(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          return HubPrestadorDadosPrestador();
        /*  if (snapshot.hasData) {
            if (snapshot.data == 'workingHours') {
              return PresenterHubUsuario.presenter();
            } else {
              return PresenterHubPrestador.presenter();
            }
          } else {
            return CircularProgressIndicatorPersonalizado();
          }*/
        },
      ),
    );
  }
}



class AuthService{
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  final googleSignIn = GoogleSignIn();

  Future getFacebookUser () async{
    return FirebaseAuth.instance.currentUser;
  }

  Future<String> getUserCurrentID() async{
    return await firebaseAuth.currentUser!.uid;
  }

  Future<User?> registerUser (String email, String password) async {

      UserCredential userCredential = await firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);

  }

}




class criarPrestador {

  AuthService authService = AuthService();

  void createUsuario() async {
    await authService.registerUser('email@gmail.com', 'password12323');
    await criarprestador();
  }

  FirebaseFirestore firestore = FirebaseFirestore.instance;


  final FirebaseAuth auth = FirebaseAuth.instance;

  Future<String?> getUserId() async {
    final User? user = await auth.currentUser;
    final userId = user?.uid.toString();
    return userId;
  }

  criarprestador () async{
    await firestore.collection('workers').doc(await getUserId()).set({
    'name': 'Gabriel',
    'phone': '2913123',
    'workingHours': '2333244',
    'description': 'asdasdsad',
    'profilePicture': 'foto1',
    'comments': 'dsdfsdf',
    'cities': 'colatina',
    'roles': 'pedreiro pinto ',
    'numberClicksOnWhatsApp': 3,
    'dueDatePlan': DateTime.now(),
    'openAccountDate': DateTime.now(),
    'brazilianIDPicture':  'getUrlToImageFirebase()',
    'IdPrestador': await getUserId(),
    'planType': 0,
    'numberClicksOnProfile':0,
    }
    );
  }

}
