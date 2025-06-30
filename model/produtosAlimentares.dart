import 'package:dart_application_1/model/produtos.dart';
import 'package:dart_application_1/lib/mixins/rastreavel.dart';

class Produto_alimenticio extends Produto with Rastreavel{
  Produto_alimenticio({
    required super.nome,
    required super.codigo,
    required super.preco,
  });


  @override
  String get tipo => 'Alimenticio';

  @override
Map<String, dynamic> toJson() {
  return {
    'nome': nome,
    'codigo': codigo,
    'preco': preco,
    'tipo': tipo,
  };
}


}