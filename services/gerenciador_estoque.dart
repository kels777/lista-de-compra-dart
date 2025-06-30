class GerenciadorEstoque {
  final Map<String, int> _estoque = {};

  void adicionar(String codigo, int quantidade) {
    _estoque.update(codigo, (valorAtual) => valorAtual + quantidade,
        ifAbsent: () => quantidade);
  }

  bool verificar(String codigo) {
    return _estoque.containsKey(codigo);
  }

  void exibirEstoque() {
    print('--- Inventário Atual ---');
    _estoque.forEach((codigo, quantidade) {
      print('[$codigo]: $quantidade unidades');
    });
    print('------------------------');
  }
}
