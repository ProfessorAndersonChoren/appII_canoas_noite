import 'dart:math';

void main() {
  List<int> A = List.generate(15, (_) => Random().nextInt(50));
  List<int> B = [];

  for (int i = 0; i < A.length; i++) {
    int quadrado = A[i] * A[i];
    B.add(quadrado);
  }
  print(A);
  print(B);
}
