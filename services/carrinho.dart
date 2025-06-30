import 'package:dart_application_1/model/produtos.dart';

class Carrinho {
  List<Produto> produtos = [];
  static int quantidadeDeProdutos = 0;

  void adicionarProduto(Produto produto) {
    produtos.add(produto);
    quantidadeDeProdutos++;
  }

  void exibirTodosOsProdutos() {
    for (var produto in produtos) {
      produto.exibirDetalhes();
      print(''); 
    }
  }

  int exibirQuantidade(){
   return produtos.length;
  }
 
  double calcularTotal() {
    double total = 0.0;
    for (var produto in produtos) {
      total += produto.preco;
    }
    return total;
  }
}
