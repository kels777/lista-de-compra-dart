import 'package:dart_application_1/produto.dart';
import 'package:dart_application_1/carrinhoDeCompras.dart';

void main() {
  Carrinho carrinho = Carrinho();

  Produto p1 = Produto(nome: 'Geladeira', codigo: '0001', preco: 2573);
  Produto p2 = Produto(nome: 'Computador', codigo: '0010', preco: 3200);

  carrinho.adicionarProduto(p1);
  carrinho.adicionarProduto(p2);

  print('--- Produtos no Carrinho ---');
  carrinho.exibirTodosOsProdutos();

  print('--- Aplicando Desconto de 10% ---');
  p1.aplicarDesconto(10);

  print('--- Produtos com Desconto ---');
  carrinho.exibirTodosOsProdutos();

  print('Total: R\$ ${carrinho.calcularTotal().toStringAsFixed(2)}');
  print('Total de produtos criados: ${Produto.totalDeProdutos}');
}
