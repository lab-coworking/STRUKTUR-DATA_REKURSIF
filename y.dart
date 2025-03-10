import 'coba.dart';
import 'dart:io';

void main(){
  stdout.write('masukan jumlah disk :');
  int jumlahDisk = int.parse(stdin.readLineSync()!);

  Menara menara = Menara(jumlahDisk, 0, 'A', 'B', 'C');
  menara.menaraHanoi(jumlahDisk,'A','C','B');
  print('total pergerkan: ${menara.pergerakan}');




}