import 'dart:io';

void main() {
  print('Digite um número positivo inteiro');
  String numero = stdin.readLineSync()!;
  int numeroConvertido = int.parse(numero);

  if (numeroConvertido < 0) {
    numeroConvertido = numeroConvertido.abs();
    numero = numeroConvertido.toString();
  }

  List<String> digitos = numero.split('');
  int soma = 0;

  for (int i = 0; i < digitos.length; i++) {
    soma += int.parse(digitos[i]);
  }

  print('A decomposição é $soma');
}
