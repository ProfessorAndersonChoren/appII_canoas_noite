import 'dart:math';

void main() {
  List<int> A = List.generate(10, (_) => Random().nextInt(50));
  List<int> B = [];

  // for (int i = A.length-1; i >= 0; i--) {
  //   B.add(A[i]);
  // }
  B.addAll(A.reversed);

  print(A);
  print(B);
}
