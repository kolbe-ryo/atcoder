import 'dart:io';

void main(List<String> args) {
  final input = stdin.readLineSync()!.split('');

  // 一文字目が小文字であればその時点で終了する
  final first = input.first;
  if (first != first.toUpperCase()) {
    print('No');
    return;
  }

  // 一文字目は評価しない
  input.removeAt(0);

  for (final str in input) {
    // 一つでも大文字があれば処理を終了する
    if (str == str.toUpperCase()) {
      print('No');
      return;
    }
  }

  // 全てに小文字だった時のみYes
  print('Yes');
}
