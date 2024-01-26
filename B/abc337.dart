import 'dart:io';

void main(List<String> args) {
  final input = stdin.readLineSync()!.split('').toList();
  final sortedList = List.from(input).sort((a, b) => a.compareTo(b));

  var storeStr = 'A';
  var seperator = 0;

  if (input.toSet().length == 1) {
    print('Yes');
    return;
  }

  if (input.toSet().length == 2) {
    if (input.first == 'C' || input.last == 'A') {
      print('No');
      return;
    }
  }

  if (input.toSet().length == 3 && input.first != 'A') {
    print('No');
    return;
  }

  for (final str in input) {
    if (seperator > 2) {
      print('No');
      return;
    }

    if (str != storeStr) {
      seperator++;
      storeStr = str;
    }
  }

  if (seperator == 2 && input.last != 'C') {
    print('No');
    return;
  }

  print('Yes');
}
