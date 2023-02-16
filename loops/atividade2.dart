import 'dart:io';

void main() {
  print('Digite um número inteiro positivo:');
  String numero = stdin.readLineSync()!;

  List<String> digitos = numero.split('');

  int cont = 0;
  for (int i = 0; i < digitos.length; i++) {
    cont++;
  }
  print('O número $numero tem $cont dígitos');
}
