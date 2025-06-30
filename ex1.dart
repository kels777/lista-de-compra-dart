import 'package:dart_application_1/model/produtos.dart';
import 'package:dart_application_1/model/produtosAlimentares.dart';
import 'package:dart_application_1/model/produtos_eletronicos.dart';
import 'package:dart_application_1/services/carrinho.dart';
import 'package:dart_application_1/lib/mixins/rastreavel.dart';

void main() {
  Carrinho carrinho = Carrinho();

  Produto p1 = Produto_eletronico(nome: 'Geladeira', codigo: '0001', preco: 2573);
  Produto p2 = Produto_alimenticio(nome: 'Computador', codigo: '0010', preco: 3200);

  carrinho.adicionarProduto(p1);
  carrinho.adicionarProduto(p2);

  print('--- Produtos no Carrinho ---');
  carrinho.exibirTodosOsProdutos();

  print('--- Produtos com Desconto ---');
  carrinho.exibirTodosOsProdutos();

  print('Total: R\$ ${carrinho.calcularTotal().toStringAsFixed(2)}');
  print('Total de produtos criados: ${carrinho.exibirQuantidade()}');

  (p1 as Rastreavel).gerarEtiquetaEnvio(p1.codigo,p1.nome);
  (p2 as Rastreavel).gerarEtiquetaEnvio(p2.codigo,p1.nome);
  
}
