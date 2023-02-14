import 'dart:io';

void main() {
  print('Digite a operação escolhida:');
  print('1 - Somar');
  print('2 - Subtrair');
  print('3 - Multiplicar');
  print('4 - Dividir');
  int opcao = int.parse(stdin.readLineSync()!);

  while (opcao != 0) {
    print('Digite o primeiro número');
    double numero1 = double.parse(stdin.readLineSync()!);
    print('Digite o segundo número');
    double numero2 = double.parse(stdin.readLineSync()!);

    switch (opcao) {
      case 1:
        double resultado = somar(numero1, numero2);
        print('A soma é $resultado');
        break;
      case 2:
        double resultado = subtrair(numero1, numero2);
        print('A subtração é $resultado');
        break;
      case 3:
        double resultado = multiplicar(numero1, numero2);
        print('A multiplicação é $resultado');
        break;
      case 4:
        double resultado = dividir(numero1, numero2);
        print('A divisão é $resultado');
        break;
      default:
        print('Opção inválida!!!');
        break;
    } // Switch
    print('Digite uma nova opção:');
    opcao = int.parse(stdin.readLineSync()!);
  }
}

double somar(double n1, double n2) {
  return n1 + n2;
}

double subtrair(double n1, double n2) {
  return n1 - n2;
}

double multiplicar(double n1, double n2) {
  return n1 * n2;
}

double dividir(double dividendo, double divisor) {
  return dividendo / divisor;
}
