import 'dart:io';

void main(List<String> args) {
  // 標準入力を取得
  final n = int.parse(stdin.readLineSync()!);
  final listA = stdin.readLineSync()!.split(' ').toList();

  // key: 入力値A/ value: index
  final mapA = {};
  for (var i = 0; i < n; i++) {
    mapA[listA[i]] = i + 1;
  }

  // 格納するリスト
  final answer = [];

  // 最初の数字を取得
  var value = mapA['-1'];
  answer.add(value);

  // // 最初の数字を除いたものを繰り返し取得
  for (var i = 0; i < n - 1; i++) {
    // リストの最後の数値の場所を調べ、場所+1が次の数値
    value = mapA['$value'];
    answer.add(' $value');
  }

  print(answer.join(' '));
}
