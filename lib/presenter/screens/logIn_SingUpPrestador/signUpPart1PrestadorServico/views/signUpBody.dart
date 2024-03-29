import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import '../../../../../util/colors/colorGradient.dart';
import '../../../../components/popUps/popUpAceiteAsPoliticasDePrivacidade.dart';
import '../../../../components/popUps/popUpEmailJaEstaEmUso.dart';
import '../../logInPrestadorServico/views/logInBody.dart';
import '../../signUpPart2WorkerInformation/ViewSignUpPart2WorkerInformatio.dart';
import 'backArrowSignUp.dart';
import 'package:email_validator/email_validator.dart';


GoogleSignInAccount? _usuarioAtual;

class SignUpPart1Body extends StatefulWidget {
  const SignUpPart1Body({
    Key? key,
  }) : super(key: key);
  @override
  _SignUpPart1Body createState() => _SignUpPart1Body();
}

class _SignUpPart1Body extends State<SignUpPart1Body> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final cofirmPasswordController = TextEditingController();
  final formKeyAuthentication = GlobalKey<FormState>();
  final RoundedLoadingButtonController _btnController = RoundedLoadingButtonController();

  bool _estaEscondidoSenha = false;
  bool _estaEscondidoConfirmarSenha = false;

  bool? _isChecked = false;
  Map? _userData;
  GoogleSignInAccount? usuario = _usuarioAtual;

  @override
  Widget build(BuildContext context) {

    return usuario == null && _userData == null
        ? _usuarioNaologado(context)
        : _usuarioLogado(context);
  }

  Widget _usuarioNaologado(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecorationGradient(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: const EdgeInsets.fromLTRB(12, 36, 0, 0),
                child: SizedBox(child: BackArrowLogInScreen())),

            SizedBox(height: screenHeight * 0.011848),
            // #login, #welcome
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Cadastre-se",
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                  SizedBox(height: screenHeight * 0.011848),
                  Text(
                    "Seja bem vindo ao Quick Fix",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.011848),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60)),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      children: [
                        SizedBox(height: screenHeight * 0.011848 * 2),

                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                  color: Color.fromRGBO(
                                      171, 171, 171, 0.7019607843137254),
                                  blurRadius: 20,
                                  offset: Offset(0, 10)),
                            ],
                          ),
                          child: Form(
                            key: formKeyAuthentication,
                            child: Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Colors.grey.shade200)),
                                  ),
                                  child: TextFormField(
                                    validator: (emailController) =>
                                        !EmailValidator.validate(
                                                emailController!)
                                            ? 'Email inválido'
                                            : null,
                                    controller: emailController,
                                    cursorColor: Colors.indigoAccent,
                                    decoration: InputDecoration(
                                        suffixIcon: IconButton(
                                          icon: Icon(Icons.close),
                                          onPressed: () =>
                                              emailController.clear(),
                                        ),
                                        hintText: "Email",
                                        hintStyle:
                                            TextStyle(color: Colors.grey),
                                        border: InputBorder.none),
                                    keyboardType: TextInputType.emailAddress,
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Colors.grey.shade200)),
                                  ),
                                  child: TextFormField(
                                    controller: passwordController,
                                    cursorColor: Colors.indigoAccent,
                                    obscureText: _estaEscondidoSenha,
                                    validator: (passwordController) {
                                      if (passwordController!.isEmpty ||
                                          !RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$')
                                              .hasMatch(passwordController)) {
                                        return "Sua senha deve conter uma letra maiúscula,\n minúscula e um número e pelo menos 8 caracteres";
                                      } else {
                                        return null;
                                      }
                                    },
                                    decoration: InputDecoration(
                                        suffix: InkWell(
                                          onTap:() {
                                            print('_togglePasswordViewConfirmarSenha');
                                          },
                                          child: Icon(
                                            _estaEscondidoSenha
                                                ? Icons.visibility
                                                : Icons.visibility_off,
                                          ),
                                        ),
                                        hintText: "Senha",
                                        hintStyle:
                                            TextStyle(color: Colors.grey),
                                        border: InputBorder.none),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Colors.grey.shade200)),
                                  ),
                                  child: TextFormField(
                                    validator: (cofirmPasswordController) =>
                                        passwordController.text !=
                                                cofirmPasswordController
                                                    .toString()
                                            ? 'As senhas precisam ser iguais'
                                            : null,
                                    controller: cofirmPasswordController,
                                    cursorColor: Colors.indigoAccent,
                                    obscureText: _estaEscondidoConfirmarSenha,
                                    decoration: InputDecoration(
                                        suffix: InkWell(
                                          onTap: () {
                                            print('_togglePasswordViewConfirmarSenha');
                                          },
                                          child: Icon(
                                            _estaEscondidoConfirmarSenha
                                                ? Icons.visibility
                                                : Icons.visibility_off,
                                          ),
                                        ),
                                        hintText: "Confirme senha",
                                        hintStyle:
                                            TextStyle(color: Colors.grey),
                                        border: InputBorder.none),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: screenHeight*0.011848*1),

                        CheckboxListTile(
                          value: _isChecked,
                          onChanged: (bool? novoValor) {
                            setState(() {
                              _isChecked = !_isChecked!;
                            });
                          },
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GestureDetector(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Li e concordo com as',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold, fontSize: 14),
                                    ),
                                    Text(
                                      'Políticas de privacidade',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.indigoAccent,
                                          fontSize: 14),
                                    ),
                                  ],
                                ),
                                onTap: () {

                                }
                              ),
                            ],
                          ),
                          //shape: ro,
                          checkColor: Colors.indigo,
                        ),
                        SizedBox(height: screenHeight*0.011848*1),
                        // #login
                        Container(
                          height: screenHeight * 0.011848 * 5,
                          margin: EdgeInsets.symmetric(horizontal: 50),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Center(
                            child: RoundedLoadingButton(
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
                                    borderRadius: BorderRadius.circular(30.0)),
                                child: Container(
                                  constraints: BoxConstraints(
                                      maxWidth: 350.0, minHeight: 50.0),
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Cadastre-se',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              onPressed: () {

                              },
                            ),
                          ),
                        ),
                        SizedBox(height: screenHeight*0.011848*2),

                        GestureDetector(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Já tem conta?',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text('Entrar',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Colors.blue[600],
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          onTap: () {

                          }
                        ),
                        SizedBox(height: screenHeight*0.011848*2),
                        Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                                child: SizedBox(
                                  height: 50,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.white,
                                      shape: new RoundedRectangleBorder(
                                        borderRadius:
                                            new BorderRadius.circular(20.0),
                                      ),
                                    ),
                                    onPressed: ()  {

                                    },
                                    child: Center(
                                      child: Container(
                                        child: Row(
                                          children: <Widget>[
                                            Icon(
                                              FontAwesomeIcons.facebook,
                                              color: Colors.indigoAccent,
                                            ),
                                            SizedBox(
                                              width: screenWidth * 0.03,
                                            ),
                                            Text(
                                              'Cadrastre-se com Facebook',
                                              style: TextStyle(
                                                  fontSize: screenWidth <348 ?15.5 :18,
                                                  color: Colors.black),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: screenWidth * 0.02564 * .5),
                          ],
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

  Widget _usuarioLogado(BuildContext context) {
    return SingUpPart2WorkerInformation();
  }

  Future mostrarErroEmailInvalido() => showDialog(
    context: context,
    builder: (context) => PopUpEmailJaEstaEmUso(),
  );

  Future aceiteAsPoliticasDePrivacidade() => showDialog(
    context: context,
    builder: (context) => PopUpAceiteAsPoliticasDePrivacidade(),
  );
}
