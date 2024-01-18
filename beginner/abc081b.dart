import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  stdin.readLineSync();
  final xList = stdin.readLineSync()!.split(' ');

  final calculatedIter = xList.map((e) {
    var count = 0;
    var number = int.parse(e);
    while (number % 2 == 0) {
      number = number ~/ 2;
      count++;
    }
    return count;
  });

  print(calculatedIter.reduce(min));
}
