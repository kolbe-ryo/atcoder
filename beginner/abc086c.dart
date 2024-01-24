import 'dart:io';

void main(List<String> args) {
  final n = int.parse(stdin.readLineSync()!);

  var prevT = 0;
  var prevX = 0;
  var prevY = 0;

  for (var i = 0; i < n; i++) {
    final nLine = stdin.readLineSync()!.split(' ').map(int.parse).toList();
    final t = nLine[0];
    final x = nLine[1];
    final y = nLine[2];

    // x + yは必ずt以下である
    if (t < x + y) {
      print('No');
      return;
    }

    final isOdd = t.isOdd && (x + y).isOdd;
    final isEven = t.isEven && (x + y).isEven;
    // x + yが偶数ならtは偶数、奇数ならtは奇数
    if (!isOdd && !isEven) {
      print('No');
      return;
    }

    final dist = (x - prevX).abs() + (y - prevY).abs();
    final timeDiff = (t - prevT).abs();

    if (dist > timeDiff || (timeDiff - dist) % 2 != 0) {
      print('No');
      return;
    }

    prevT = t;
    prevX = x;
    prevY = y;
  }
  print('Yes');
}
