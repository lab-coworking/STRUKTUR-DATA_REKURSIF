import 'latihan3.dart';
void main() {
  List <Mahasiswa> mahasiswa = [
    Mahasiswa('2146', 'Ahmad Maulidin'),
    Mahasiswa('2147', 'budi julianto'),
    Mahasiswa('2149', 'Niky Chandra'),
    Mahasiswa('2142', 'Andi Obama'),
    Mahasiswa('2148', 'Samsul'),
  ];

  print('Data Mahasiswa Sebelum Diurutkan:');
  for(var Mahasiswa in mahasiswa) {
    print(Mahasiswa);
  }

  quickSort(mahasiswa, 0, mahasiswa.length - 1);

  print('\nData Mahasiswa Setelah Diurutkan:');
  for(var Mahasiswa in mahasiswa) {
    print(Mahasiswa);
  }
}

void quickSort(List<Mahasiswa>arr,int low, int high) {
  if (low < high) {
    int pi = partition(arr, low, high);

    quickSort(arr, low, pi - 1);
    quickSort(arr, pi + 1, high);
  }
}

int partition (List<Mahasiswa> arr, int low, int high){
  Mahasiswa pivot = arr[high];
  int i = low -1;

  for (int j = low; j < high; j++) {
    if (arr[j].compareTo(pivot) < 0 ) {
      i++;
      swap (arr ,i,j);
    }
  }
  swap(arr, i + 1, high);
  return i+1;
}


void swap (List <Mahasiswa> arr, int i, int j) {
 
    Mahasiswa temp = arr[i];
    arr[i] = arr[j];
    arr[j] = temp;
}


