import 'dart:math';

void main() {
  List<int> A = List.generate(8, (_) => Random().nextInt(50));
  List<int> B = [];

  for (int numero in A) { // numero -> A[i]
    B.add(numero * 2);
  }
  print(A);
  print(B);
}
