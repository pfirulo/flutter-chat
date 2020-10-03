// To parse this JSON data, do
//
//     final usuarioResponse = usuarioResponseFromJson(jsonString);

import 'dart:convert';

import 'package:chat_flutter_socket/models/usuario.dart';

UsuarioResponse usuarioResponseFromJson(String str) =>
    UsuarioResponse.fromJson(json.decode(str));

String usuarioResponseToJson(UsuarioResponse data) =>
    json.encode(data.toJson());

class UsuarioResponse {
  UsuarioResponse({
    this.ok,
    this.usuarios,
  });

  bool ok;
  List<Usuario> usuarios;

  factory UsuarioResponse.fromJson(Map<String, dynamic> json) =>
      UsuarioResponse(
        ok: json["ok"],
        usuarios: List<Usuario>.from(
            json["usuarios"].map((x) => Usuario.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "ok": ok,
        "usuarios": List<dynamic>.from(usuarios.map((x) => x.toJson())),
      };
}
