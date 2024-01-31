import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  final n = int.parse(stdin.readLineSync()!);
  final q = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  final a = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  final b = stdin.readLineSync()!.split(' ').map(int.parse).toList();

  final minimumA = calculateMaxXY(n: n, q: q, first: a).reduce(min);
  final minimumB = calculateMaxXY(n: n, q: q, first: b).reduce(min);

  final _list = <String>[];

  for (var i = minimumA; i != 0; i--) {
    for (var j = minimumB; j != 0; j--) {
      for (var k = 0; k < n; k++) {
        // 大きいa, bから数え、1回でも失敗条件に入った場合、その条件のループを抜ける
        print('i$i');
        print('j$j');
        print('k$k');
        if (q[k] < a[k] * i + b[k] * j) {
          break;
        }

        _list.add('${q[k] >= a[k] * i + b[k] * j}${i + j}');

        if (k == n - 1) {
          print(_list);
          return;
        }
      }
    }
  }

  // 条件に合致しなかった場合0
  print(0);
}

List<int> calculateMaxXY({
  required int n,
  required List<int> q,
  required List<int> first,
}) {
  var list = <int>[];

  // qの各要素で割り切れるか確認
  for (var i = 0; i < n; i++) {
    if (first[i] != 0) {
      list.add(q[i] ~/ first[i]);
    }
  }
  return list;
}
