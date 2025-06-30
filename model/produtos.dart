abstract class Produto {
  late String nome;
  late String codigo;
  late double preco;
  static int _contador = 0;

  Produto({
    required this.nome,
    required this.codigo,
    required this.preco,
  });

  String get tipo;
  int get contador{return _contador;}

   Map<String, dynamic> toJson() {
    return {
      'nome': nome,
      'codigo': codigo,
      'preco': preco,
      'tipo': tipo,
    };
  }

  void exibirDetalhes() {
    _contador++;
    print('--- Produto $_contador ---');
    print('Nome: $nome');
    print('Código: $codigo'); 
    print('Preço: R\$ ${preco.toStringAsFixed(2)}');
    print('Produto: $tipo');
    print(" ");
  }

  void aplicarDesconto(double percentual) {
    double fator = 1 - (percentual / 100);
    double novoPreco = preco * fator;

    _contador++;
    print('--- Produto Original---');
    print('Nome: $nome');
    print('Código: $codigo'); 
    print('Preço: R\$ $preco');
    print(" ");

    print('--- Produto com Desconto---');
     print('Nome: $nome');
    print('Código: $codigo'); 
    print("Preço: R\$ ${novoPreco.toStringAsFixed(2)}");
    print(" ");
    preco = novoPreco;
  }
}