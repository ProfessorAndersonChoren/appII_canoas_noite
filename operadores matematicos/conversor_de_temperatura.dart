void main() {
  // Entrada
  int celsius = 30;

  // Processamento
  double fahrenheit = celsius * 1.8 + 32;
  double kelvin = celsius + 273.15;
  double rankine = celsius * 1.8 + 491.67;

  // Saída
  print('$celsiusºC é igual à $fahrenheitºF');
  print('$celsiusºC é igual à $kelvin\K');
  print('$celsiusºC é igual à ${rankine.toStringAsFixed(2)}ºR');
}
