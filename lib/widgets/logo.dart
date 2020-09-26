import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final String titulo;

  const Logo({@required this.titulo});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.only(top: 50),
      width: width / 2,
      child: Column(
        children: [
          Image(image: AssetImage('assets/tag-logo.png')),
          SizedBox(height: 20),
          Text(
            this.titulo,
            style: TextStyle(fontSize: 30),
          ),
        ],
      ),
    );
  }
}
