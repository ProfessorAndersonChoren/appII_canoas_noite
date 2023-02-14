void main() {
  /*
    1° Tempo de empresa superior à 5 anos E o salário tem que ser menor que R$ 1500

    2° Tempo de empresa superior à 3 anos E o salário tem que ser menor que R$ 1000

    3° Tempo de empresa superior à 1 ano E o salário tem que ser menor que R$ 800
  */

  // Entrada
  double salario = 750;
  int tempoDeEmpresa = 2;
  double aumento = 1.05; // 5% -> 5/100 = 0.05 + 1

  // Processamento
  // if (tempoDeEmpresa > 5 && salario < 1500) {
  //   // salario = salario * aumento;
  //   salario *= aumento;
  // } else if (tempoDeEmpresa > 3 && salario < 1000) {
  //   salario *= aumento;
  // } else if (tempoDeEmpresa > 1 && salario < 800) {
  //   salario *= aumento;
  // }

  if ((tempoDeEmpresa > 5 && salario < 1500) ||
      (tempoDeEmpresa > 3 && salario < 1000) ||
      (tempoDeEmpresa > 1 && salario < 800)) {
    salario *= aumento;
  }

  print('O novo salário do funcionário é R\$ $salario');
}
