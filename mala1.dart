import 'Latihan1.dart';

void main() {
  List <Mahasiswa> mahasiswa  =  [
    Mahasiswa('2147', 'Firman Ardiyansyah'),
    Mahasiswa('2148', 'Achmad Fahmi'),
    Mahasiswa('2146', 'Ahmad Maulidin'),
    Mahasiswa('2149', 'Tio Mukti'),
    Mahasiswa('2141', 'Ahmad farizy'),
  ];

  print('Sebelum Diurutkan:');
  display(mahasiswa);

  DateTime start = DateTime.now();

  insertionSort(mahasiswa);

  Duration selesai = DateTime.now().difference(start);

  print('\nSetelah Diurutkan:');
  display(mahasiswa);

  print('Waktu pengurutan: ${selesai.inMilliseconds} ms');
}