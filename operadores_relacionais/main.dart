void main() {
  var nome = "Anderson";
  var idade = 15;
  var acompanhado = false;

  bool condicaoDeEntrada = idade >= 18;
  if (condicaoDeEntrada) {
    // Sempre executado se o valor for TRUE
    print('Bem-vindo ao nosso show $nome');
  } else {
    // Sempre executado se o valor for FALSE
    if (acompanhado) {
      print('Bem-vindos ao nosso show $nome e seu acompanhante');
    }else{
      print('Lamento $nome, seu acesso não foi permitido!!!');
    }
  }
}
