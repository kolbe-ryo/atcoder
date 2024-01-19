import 'dart:io';

void main(List<String> args) {
  final inputs = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  final n = inputs[0];
  final a = inputs[1];
  final b = inputs[2];

  var sum = 0;

  // nを1ずつ減少させ、すべての整数でループさせる
  for (var i = n; i != 0; i--) {
    // 桁数の合計
    final digitsSum = i.toString().split('').map(int.parse).reduce((value, element) => value + element);

    // a未満だと条件外
    if (digitsSum < a) {
      continue;
    }

    // b以上だと条件外
    if (b < digitsSum) {
      continue;
    }
    sum += i;
  }

  print(sum);
}
