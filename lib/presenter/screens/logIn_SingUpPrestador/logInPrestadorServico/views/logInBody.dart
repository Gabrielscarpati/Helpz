import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import '../../../../../util/colors/colorGradient.dart';
import '../../../../components/popUps/popUpEmailNaoExiste.dart';
import '../../../../components/popUps/popUpLogInSenhaIncorreta.dart';
import '../../esqueceuSenhaPrestador/esqueceuSenhaPrestador.dart';
import '../../signUpPart1PrestadorServico/views/signUpBody.dart';
import 'fazerAsFuncoesLOGINESALVAr.dart';



class LogInBodyPrestador extends StatefulWidget {
  const LogInBodyPrestador({Key? key,
  }) : super(key: key);
  @override
  _LogInBodyPrestador createState() => _LogInBodyPrestador();
}
class _LogInBodyPrestador extends State<LogInBodyPrestador> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final _formKeyAuthenticationLogIn = GlobalKey<FormState>();
  final RoundedLoadingButtonController _btnController = RoundedLoadingButtonController();

  Map? _userData;
  bool _estaEscondido = false;
  String? verificaUsuarioNulo =  FirebaseAuth.instance.currentUser?.email.toString();

  @override
  Widget build(BuildContext context) {
    return verificaUsuarioNulo == null && _userData == null ? _usuarioNaologado(context) : _usuarioLogado(context);
  }
  Widget _usuarioNaologado(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecorationGradient(context),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(12,36,0,0),
              child: SizedBox(child: BackArrowLogInScreen()) ),

            const SizedBox(height: 14),

            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const[
                  Text("Login",style: TextStyle(color: Colors.white,fontSize: 40),),
                  SizedBox(height: 10,),
                  Text("Bem-vindo de volta",style: TextStyle(color: Colors.white,fontSize: 20),),
                ],
              ),
            ),
            const SizedBox(height: 20),

            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(60),topRight: Radius.circular(60)),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(22),
                    child: Column(
                      children: [
                        const SizedBox(height: 40,),
                        // #email, #password
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const[
                              BoxShadow(
                                  color: Color.fromRGBO(171, 171, 171, .7),blurRadius: 20,offset: Offset(0,10)),
                            ],
                          ),

                          child: Form(
                            key: _formKeyAuthenticationLogIn,
                            child: Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey.shade200)),
                                  ),
                                  child: TextFormField(
                                    controller: emailController,
                                    cursorColor: Colors.indigoAccent,
                                    validator: (emailController) => !EmailValidator.validate(emailController!)
                                        ? 'Email inválido'
                                        : null,
                                    decoration: InputDecoration(
                                      suffixIcon: IconButton(
                                        icon: Icon(Icons.close),
                                        onPressed: () => emailController.clear(),
                                      ),
                                        hintText: "Email",
                                        hintStyle: TextStyle(color: Colors.grey),
                                        border: InputBorder.none
                                    ),
                                    keyboardType: TextInputType.emailAddress,
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey.shade200)),
                                  ),
                                  child: TextFormField(
                                    controller: passwordController,
                                    cursorColor: Colors.indigoAccent,
                                    obscureText: _estaEscondido,
                                    validator: (passwordController) {
                                      if (passwordController!.isEmpty || !RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$').hasMatch(passwordController)){
                                        return "Sua senha deve conter uma letra maiúscula,\n minúscula e um número e pelo menos 8 caracteres";
                                      }else{
                                        return null;
                                      }
                                    },
                                    decoration: InputDecoration(
                                        suffix: InkWell(
                                            onTap: (){
                                              print('togglepassword');
                                              },
                                            child: Icon(
                                              _estaEscondido
                                                  ? Icons.visibility
                                                  : Icons.visibility_off,
                                            ),
                                          ),
                                        hintText: "Senha",
                                        hintStyle: TextStyle(color: Colors.grey),
                                        border: InputBorder.none
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                         SizedBox(height: 40),
                        // #login
                        Container(
                          height: 50,

                          child:  Center(
                            child:RoundedLoadingButton(
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
                              onPressed: ()  {
                              },
                            ),
                          ),
                        ),
                        SizedBox(height: 16,),
                        GestureDetector(
                          child: Text('Esqueceu senha?',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.blue[600],
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                           ),
                          ),
                          onTap: () => Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => EsqueceuSenhaPrestadorScreen())
                          ),
                        ),
                        SizedBox(height: 16,),
                        GestureDetector(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Não tem conta?',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text('Cadastre-se',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Colors.blue[600],
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          onTap: () => Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => SignUpPart1Body())
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            Expanded(
                                child: SizedBox(
                                  height: 50,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.white, //[Colors.blue.shade900,Colors.blue.shade500,  Colors.blue.shade400]
                                      shape: new RoundedRectangleBorder(
                                        borderRadius: new BorderRadius.circular(20.0),
                                      ),
                                    ),
                                    onPressed: ()   {

                                    },
                                    child: Center(
                                      child: Container(
                                        child: Row(
                                          children: <Widget>[
                                            Icon(FontAwesomeIcons.facebook, color: Colors.indigoAccent,),

                                            SizedBox(width: screenWidth*0.03,),
                                            Text('Cadrastre-se com Facebook',
                                              style: TextStyle(
                                                  fontSize: screenWidth <348 ?15.5 :18,
                                                  color: Colors.black
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                            ),
                            SizedBox(width: screenWidth*0.02564*.7),
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
    return Text('data')/*PresenterHubPrestador.presenter()*/;
  }

  Future mostrarErroEmailInvalido() => showDialog(
    context: context,
    builder: (context) => PopUpEmailNaoExiste(),
  );

  Future mostrarSenhaIncorreta() => showDialog(
    context: context,
    builder: (context) => PopUpSenhaEstaIcorreta(),
  );

}
