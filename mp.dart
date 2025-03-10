import 'p.dart';
import 'dart:io';
void main(){
  
  stdout.write('masukan jumlah character :');
  int jumlahhuruf = int.parse(stdin.readLineSync()!);

  stdout.write('masukan huruf:');
  String? huruf = stdin.readLineSync();

  Combinasi combinasi = Combinasi(huruf, '',0);
  combinasi.gabunganhuruf(huruf,'', 0);
  print('BUILD SUCESSFUL');
} 