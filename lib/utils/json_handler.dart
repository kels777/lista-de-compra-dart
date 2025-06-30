import 'dart:convert';
import 'dart:io';
import 'package:dart_application_1/model/produtos.dart';

void salvarCarrinhoEmJson(List<Produto> produtos, String caminhoArquivo) {
  final listaMap = produtos.map((p) => p.toJson()).toList();
  final jsonStr = jsonEncode(listaMap);

  File(caminhoArquivo).writeAsStringSync(jsonStr);
  print('Carrinho salvo em JSON com sucesso!');
}

List<Map<String, dynamic>> carregarCarrinhoDeJson(String caminhoArquivo) {
  final jsonStr = File(caminhoArquivo).readAsStringSync();
  final lista = jsonDecode(jsonStr);
  return List<Map<String, dynamic>>.from(lista);
}
