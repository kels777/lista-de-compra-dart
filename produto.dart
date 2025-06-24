class Produto {
  late String _nome;
  late String _codigo;
  late double _preco;
  static int _contador = 0;
  static int _quantidadeDeProdutos = 0;

  Produto({
    required double preco,
    required String nome,
    required String codigo,
  }){
    _preco = preco;
    _codigo = codigo;
    _nome = nome;
    _quantidadeDeProdutos++;
  }

  String get nome {return _nome;}
  String get codigo { return _codigo;}
  double get preco {return _preco;}
  static int get totalDeProdutos{ return _quantidadeDeProdutos;}
  static set contador(int x) {
    _contador = x;
  }

  set preco(double preco){
    if(preco > 0){
      _preco = preco;
    }else{
      print("Erro: O preçao não pode ser negativo. O valor de R\$ $_preco foi mantido.");
    }
  }

  void exibirDetalhes() {
    _contador++;
    print('--- Produto $_contador ---');
    print('Nome: $_nome');
    print('Código: $_codigo'); 
    print('Preço: R\$ ${_preco.toStringAsFixed(2)}');
    print("Qauntide de produtos: $_quantidadeDeProdutos");
    print(" ");
  }

  void aplicarDesconto(double percentual) {
    double fator = 1 - (percentual / 100);
    double novoPreco = _preco * fator;

    _contador++;
    print('--- Produto Original---');
    print('Nome: $_nome');
    print('Código: $_codigo'); 
    print('Preço: R\$ $_preco');
    print("Qauntide de produtos: $_quantidadeDeProdutos");
    print(" ");

    print('--- Produto com Desconto---');
     print('Nome: $_nome');
    print('Código: $_codigo'); 
    print("Preço: R\$ ${novoPreco.toStringAsFixed(2)}");
    print(" ");
    _preco = novoPreco;
  }
}