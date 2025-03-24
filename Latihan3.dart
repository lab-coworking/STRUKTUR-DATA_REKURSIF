void selectionSort<T extends Comparable<T>>(List<T> arr) {
  T temp;
  for (int i = arr.length - 1; i >= 0; i--) {
    int max = i;
    for (int j = i - 1; j >= 0; j--) {
      if (arr[j].compareTo(arr[max]) > 0) max = j;
    }
    temp = arr[i];
    arr[i] = arr[max];
    arr[max] = temp;
  }
}

void bubbleSortDescending(List<int> arr) {
  int n = arr.length;
  bool swap = true;

  while (swap) {
    for (int i = 0; i < n - 1; i++) {
      if (arr[i] < arr[i + 1]) {
        int temp = arr[i];
        arr[i] = arr[i + 1];
        arr[i + 1] = temp;
        swap = true;
        n = n - 1;
      }
    }
  }
}

void display<T>(List<T> data) {
  for (T objek in data) {
    print('$objek ');
  }
  print('');
}

void main() {
  List<num> data = List<num>.generate(10, (index) => (index + 1) * 2);
  data.shuffle();
  
  print('Data Sebelum Pengurutan:');
  display(data);

  DateTime start = DateTime.now();
  selectionSort(data);
  Duration elapsedTime = DateTime.now().difference(start);

  print('Data Setelah Pengurutan:');
  display(data);
  print('Waktu: ${elapsedTime.inMilliseconds} ms');
}