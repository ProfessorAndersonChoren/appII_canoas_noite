import 'dart:math';

void main() {
  List<int> A = List.generate(5, (_) => Random().nextInt(50));
  // List<int> B = List.filled(5, 0);
  List<int> B = [];

  print(A);
  for (int i = 0; i < A.length; i++) {
    // B[i] = A[i];
    B.add(A[i]);
  }
  print(B);
}
