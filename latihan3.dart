class Mahasiswa implements Comparable <Mahasiswa> {
  String nrp;
  String nama;

  Mahasiswa (this.nrp, this.nama);

  @override
    String toString() {
      return 'NRP: $nrp, Nama: $nama';
    }

  @override
  int compareTo(Mahasiswa other){
    return nrp.compareTo(other.nrp);
  }
}
