class manipulationdata {
  List <int> insertBefore ( List <int> arr, int key, int value) {
    int index = arr.indexOf(key);
    if (index != -1) {
      List <int> x = List.from(arr);
      x.insert(index, value);
      print('menambahkan angka $value sebelum $key: $x');
      return x;
    } else {
      print('$key tidak di temukan  dalam List.');
      return arr;
    }
  }

  List <int> insertAfter ( List <int> arr, int key, int value) {
  int index = arr.indexOf(key);
  if (index != -1) {
    List <int> x = List.from(arr);
    x.insert(index + 1, value);
    print('menambahkan angka $value setelah $key: $x');
    return x;
  } else {
    print('$key tidak di temukan  dalam List.');
    return arr;
    }
  }

  List <int> menghapusData ( List <int> arr, int key) {
  List <int> x = List.from(arr);

  bool remove = x.remove(key);


  if (remove) {
    print('Menghapus $key dari list: $x');
    return x;
  } else {
    print('$key tidak di temukan  dalam List.');
    return arr;
    }
  }
}