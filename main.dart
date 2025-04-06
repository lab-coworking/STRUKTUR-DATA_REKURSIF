import 't2.dart';

void main () {
  List <int> Data = [10, 20, 30, 40, 50];
  manipulationdata manipulasi = manipulationdata();
  print('Data awal: $Data');

  Data = manipulasi.insertBefore(Data, 30, 25);

  Data = manipulasi.insertAfter(Data, 20, 22);

  Data = manipulasi.menghapusData(Data, 10);

  manipulasi.insertBefore(Data, 100, 0);
  manipulasi.insertAfter(Data, 222, 0);
  manipulasi.menghapusData(Data, 200);
}