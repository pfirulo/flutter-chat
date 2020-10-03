import 'package:chat_flutter_socket/models/usuarios_response.dart';
import 'package:http/http.dart' as http;
import 'package:chat_flutter_socket/global/enviroment.dart';
import 'package:chat_flutter_socket/services/auth_service.dart';
import 'package:chat_flutter_socket/models/usuario.dart';

class UsuarioService {
  Future<List<Usuario>> getUsuarios() async {
    try {
      final resp = await http.get('${Enviroment.apiUrl}/usuarios', headers: {
        'Content-Type': 'application/json',
        'x-token': await AuthService.getToken(),
      });

      final usuarioResponse = usuarioResponseFromJson(resp.body);

      return usuarioResponse.usuarios;
    } catch (e) {
      return [];
    }
  }
}
