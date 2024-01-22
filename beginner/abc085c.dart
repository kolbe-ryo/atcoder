import 'dart:io';

void main(List<String> args) {
  final input = stdin.readLineSync()!.split(' ').map(int.parse);
  final n = input.first;
  final sum = input.last;

  // お札の定義
  const yen10000 = 10000;
  const yen5000 = 5000;
  const yen1000 = 1000;

  for (var x = 0; x <= n; x++) {
    for (var y = 0; y <= n; y++) {
      // そもそも上限枚数を超えた時点で、yのループはさせない
      if (x + y > n) {
        break;
      }
      for (var z = 0; z <= n; z++) {
        // そもそも上限枚数を超えた時点で、zのループはさせない
        if (x + y + z > n) {
          break;
        }
        // お札の合計「枚数」がnではない場合次のパターンを施行する
        if (x + y + z != n) {
          continue;
        }
        // お札の合計「金額」がsumではない場合次のパターンを施行する
        if (x * yen10000 + y * yen5000 + z * yen1000 != sum) {
          continue;
        }
        // 上記の2条件をクリアした場合目的の条件なので、出力して処理を終了する
        print('$x $y $z');
        return;
      }
    }
  }

  // どの条件にも合致しなかった場合、固定値を出力する
  print('-1 -1 -1');
}
