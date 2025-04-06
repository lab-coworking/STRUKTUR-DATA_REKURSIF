int sequentialSearch ( List <int> arr, int x ) {
  int N = arr.length;
  for ( int i = 0; i < N; i++ ) {
    if ( arr [i] == x ) return i;
  }
  return -1;
}

void main() {
  List <int> arr = [ 2, 3, 4, 10, 40 ];
  int x = 10;

  int result = sequentialSearch(arr, x );
    if ( result == -1 ) {
      print('element tidak  ada di dalam  array');
    } else {
      print('elemen ditemukan pada index ke-$result');
    }
}