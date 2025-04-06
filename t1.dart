import 'dart:io';
class maingame {
  int n = 0;

  maingame ( this.n );

  void start () {
    int low = 1;
    int high = n;

    while ( low < high ) {
      int mid = ( low + high ) ~/ 2;
      stdout.write ('Is your number less than $mid? (yes / No ): ');
      var input = stdin.readLineSync();

      if ( input?.toLowerCase() == ' yes ') {
        high = mid - 1;
      } else { 
        low = mid;
        if ( low == high ) break;
      }

      if ( high - low == 1 ) {
        stdout.write('is your number less than ${high}? (yes / No ): ');
        input = stdin.readLineSync();

        if( input?.toLowerCase() == 'yes') {
          print('your number must be $low.');
        } else {
          print('your number must be $high.');
        }
        return;
      }
    }
    print('your number must be $low.');
  }
}