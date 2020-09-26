import 'package:chat_flutter_socket/widgets/boton_azul.dart';
import 'package:chat_flutter_socket/widgets/custom_input.dart';
import 'package:chat_flutter_socket/widgets/labels.dart';
import 'package:chat_flutter_socket/widgets/logo.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.95,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Logo(
                  titulo: 'Messenger',
                ),
                _Form(),
                Labels(isLogin: true, ruta: 'register'),
                Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Text(
                    'Términos y condiciones de uso',
                    style: TextStyle(fontWeight: FontWeight.w300),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Form extends StatefulWidget {
  _Form({
    Key key,
  }) : super(key: key);

  @override
  __FormState createState() => __FormState();
}

class __FormState extends State<_Form> {
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50),
      margin: EdgeInsets.only(top: 40),
      child: Column(
        children: [
          TextInput(
            icon: Icons.mail_outline,
            text: 'Email',
            keyboardType: TextInputType.emailAddress,
            textController: emailCtrl,
          ),
          TextInput(
              isPassword: true,
              icon: Icons.vpn_key,
              text: 'Password',
              textController: passCtrl),
          BotonAzul(
              text: 'Ingresar',
              onPressed: () {
                print('Email: ${emailCtrl.text}, Password: ${passCtrl.text} ');
              }),
        ],
      ),
    );
  }
}
