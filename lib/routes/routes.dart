import 'package:chat_flutter_socket/pages/chat_page.dart';
import 'package:chat_flutter_socket/pages/loading_page.dart';
import 'package:chat_flutter_socket/pages/login_page.dart';
import 'package:chat_flutter_socket/pages/register_page.dart';
import 'package:chat_flutter_socket/pages/usuarios_page.dart';
import 'package:flutter/cupertino.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  'usuarios': (_) => UsuariosPage(),
  'chat': (_) => ChatPage(),
  'login': (_) => LoginPage(),
  'register': (_) => RegisterPage(),
  'loading': (_) => LoadingPage(),
};
