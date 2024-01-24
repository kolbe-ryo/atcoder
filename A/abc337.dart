import 'dart:io';

void main(List<String> args) {
  // 定数の定義
  const winTakagashi = 'Takahashi';
  const winAoki = 'Aoki';
  const draw = 'Draw';

  final n = int.parse(stdin.readLineSync()!);

  var sumTakahashi = 0;
  var sumAoki = 0;

  // x, yの配列を配列に格納する
  for (var i = 0; i < n; i++) {
    final xyList = stdin.readLineSync()!.split(' ').map(int.parse).toList();
    sumTakahashi += xyList.first;
    sumAoki += xyList.last;
  }

  if (sumTakahashi > sumAoki) {
    print(winTakagashi);
  } else if (sumAoki > sumTakahashi) {
    print(winAoki);
  } else {
    print(draw);
  }
}
