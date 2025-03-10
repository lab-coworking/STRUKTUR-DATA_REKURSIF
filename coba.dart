class Menara{
  num pergerakan =0;
  num n = 0;
  var from;
  var to;
  var aux;

  Menara( this.n, this.pergerakan,this.from, this.to, this.aux);
  void menaraHanoi( num n, var from, var to, var aux){
    if (n ==1){
      print('pindahkan dari disk $n dari menara $from ke menara $to');
      pergerakan++;
      return;
    }
    menaraHanoi(n - 1 , from, aux, to);
    print('pindahkan dari disk $n dari menara $from ke menara $to');
    pergerakan++;
    menaraHanoi(n - 1, aux, to ,from);
  }
}