import 'produto.dart';

class Carrinho {
  List<Produto> produtos = [];

  void adicionarProduto(Produto produto) {
    produtos.add(produto);
  }

  void exibirTodosOsProdutos() {
    Produto.contador = 0; 
    for (var produto in produtos) {
      produto.exibirDetalhes();
      print(''); 
    }
  }
 
  double calcularTotal() {
    double total = 0.0;
    for (var produto in produtos) {
      total += produto.preco;
    }
    return total;
  }
}
