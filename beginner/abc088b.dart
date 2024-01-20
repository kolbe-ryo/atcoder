import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  // 入力
  stdin.readLineSync();
  final cardList = stdin.readLineSync()!.split(' ').map(int.parse).toList();

  //
  var countAlice = 0;
  var countBob = 0;

  while (cardList.isNotEmpty) {
    // Aliceの手札に追加
    if (cardList.isNotEmpty) {
      final maximumCard = cardList.reduce(max);
      cardList.remove(maximumCard);
      countAlice += maximumCard;
    }

    // Bobの手札に追加
    if (cardList.isNotEmpty) {
      final maximumCard = cardList.reduce(max);
      cardList.remove(maximumCard);
      countBob += maximumCard;
    }
  }

  print(countAlice - countBob);
}
