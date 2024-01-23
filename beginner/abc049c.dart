import 'dart:io';

void main(List<String> args) {
  var s = stdin.readLineSync()!;
  // const t0 = 'dreameraser';
  // const t1 = 'dreamerase';
  const t2 = 'dreamer';
  const t3 = 'dream';
  const t4 = 'eraser';
  const t5 = 'erase';

  const _list = [t4, t5, t2, t3];

  for (final i in _list) {
    s = s.replaceAll(RegExp(i), '');
    if (s.isEmpty) {
      print('YES');
      return;
    }
  }
  print('NO');
}
