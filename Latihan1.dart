class Mahasiswa implements Comparable <Mahasiswa> {
  String nrp;
  String nama;

  Mahasiswa (this.nrp, this.nama);

  @override
    int compareTo(Mahasiswa other){
      return this.nrp.compareTo(other.nrp);
    }

  @override
    String toString() {
      return 'NRP: $nrp, Nama: $nama';
    }
}

void insertionSort <T extends Comparable <T>> (List <T> arr) {
  for (int i = 1; i < arr.length; i++ ) {
    T key = arr[i];
    int j = i - 1;

    while ( j >= 0 && arr[j].compareTo(key) > 0) {
      arr [j + 1] = arr[j];
      j = j - 1;
    }
   arr[j + 1] = key;
  }
}

void display <T> (List<T> data) {
  for (T item in data) {
    print(item);
  }
}