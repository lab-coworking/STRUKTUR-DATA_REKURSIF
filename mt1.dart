import 'dart:io';
import 't1.dart';
void main () {
  stdout.write('masukan angka maksimal: ');
  int n = int.parse(stdin.readLineSync()!);
  maingame game = maingame (n);
  game.start();
}