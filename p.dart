import 'dart:io';
class Combinasi{
  var a;
  var b;
  num index = 0;

  Combinasi(this.a,this.b,this.index);

  void gabunganhuruf( var a, String b, num index){
    if ( index == a.length) {
     stdout.write('$b ');
      return;
    } else {
   for ( int i = 0 ; i < a.length; i ++ ){
      gabunganhuruf(a, b + a[i], index + 1);
      
    }
   }
  }
}