import 'package:flutter/material.dart';

class Labels extends StatelessWidget {
  final bool isLogin;
  final String ruta;

  const Labels({@required this.isLogin, @required this.ruta});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            isLogin ? '¿No tienes cuenta?' : '¿Tienes cuenta?',
            style: TextStyle(
              color: Colors.black54,
              fontSize: 15,
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(height: 10),
          FlatButton(
            child: Text(
              isLogin ? 'Crea una ahora!' : 'Ingresar',
              style: TextStyle(
                color: Colors.blue[600],
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: () {
              Navigator.pushReplacementNamed(context, this.ruta);
            },
          ),
        ],
      ),
    );
  }
}
