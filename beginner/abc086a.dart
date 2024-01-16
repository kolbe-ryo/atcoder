import 'dart:io';

void main() {
  final inputItrable = stdin.readLineSync()!.split(' ').map(int.parse);

  final surplusBy2 = inputItrable.reduce((value, element) => value * element) % 2;
  final solution = surplusBy2 == 0 ? 'Even' : 'Odd';
  print(solution);
}
