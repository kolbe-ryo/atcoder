import 'dart:io';

void main(List<String> args) {
  final n = int.parse(stdin.readLineSync()!);
  final mochis = <int>[];

  // nの回数だけ標準入力から取り出す
  for (var i = 0; i < n; i++) {
    final mochiDiameter = int.parse(stdin.readLineSync()!);
    // mochisリストに同じものがなければ入れる
    if (mochis.indexOf(mochiDiameter) == -1) {
      mochis.add(mochiDiameter);
    }
  }
  print(mochis.length);
}
