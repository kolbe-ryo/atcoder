import 'dart:collection';
import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  final input = stdin.readLineSync()!.split('');

  final strMap = <String, int>{};

  for (final str in input) {
    if (strMap[str] != null) {
      strMap[str] = strMap[str]! + 1;
    } else {
      strMap[str] = 1;
    }
  }

  final maxValue = strMap.values.reduce(max);

  final sameMap = <String, int>{};
  strMap.forEach((key, value) {
    if (maxValue > value) {
      return;
    }
    sameMap[key] = value;
  });

  final sortMap = SplayTreeMap<String, int>.from(sameMap, (a, b) => a.compareTo(b));

  print(sortMap.firstKey());
}
