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
