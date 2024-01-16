import 'dart:io';

void main(List<String> args) {
  final input = stdin.readLineSync()!.split('').map(int.parse);

  final solution = input.reduce((value, element) => value + element);
  print(solution);
}
