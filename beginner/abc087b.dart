import 'dart:io';

void main(List<String> args) {
  final a = int.parse(stdin.readLineSync()!);
  final b = int.parse(stdin.readLineSync()!);
  final c = int.parse(stdin.readLineSync()!);
  final x = int.parse(stdin.readLineSync()!);

  var count = 0;
  for (var ia = 0; ia <= a; ia++) {
    for (var ib = 0; ib <= b; ib++) {
      for (var ic = 0; ic <= c; ic++) {
        if (500 * ia + 100 * ib + 50 * ic == x) {
          count++;
        }
      }
    }
  }
  print(count);
}
