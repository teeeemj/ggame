import 'dart:io';
import 'dart:math';

////////--------------Random method----//////////
// void main(List<String> arguments) {
//   print('Guess a number from 1 to 100 and i will guess it');
//   int low = 1;
//   int high = 100;
//   String answer;
//   int steps = 1;

//   do {
//     int guessNum = Random().nextInt(high - low + 1) + low;
//     print('Is your number $guessNum? ');
//     answer = stdin.readLineSync() ?? '';

//     if (answer == 'yes') {
//     } else if (answer == 'no') {
//       print('Is your number less or greater than the guessed number?');
//       String lessGreat = stdin.readLineSync() ?? '';

//       if (lessGreat == 'greater') {
//         low = guessNum + 1;
//       } else if (lessGreat == 'less') {
//         high = guessNum - 1;
//       } else {
//         print('Something went wrong');
//       }
//       steps++;
//     } else {
//       print('Something went wrong');
//     }
//   } while (answer != 'yes');
//   print('I guessed your number in $steps steps');
// }
///////---------Binary method------///////////////
void main() {
  print('Guess a number from 1 to 100 and i will guess it');
  int low = 1;
  int high = 100;
  int steps = 0;

  steps = binaryMethod(low, high);
  print('I guessed your number in $steps steps');
}

int binaryMethod(int low, int high) {
  int steps = 1;

  do {
    int guessNum = (low + high) ~/ 2;
    print('Is your number $guessNum?\nType Yes or Not');
    String answer = stdin.readLineSync() ?? ''.toLowerCase();

    if (answer == 'yes') {
      print('I won!');
      break;
    } else if (answer == 'no') {
      print('Is your number less or greater than the guessen number?');
      String lessGreat = stdin.readLineSync() ?? ''.toLowerCase();
      if (lessGreat == 'greater') {
        low = guessNum + 1;
      } else if (lessGreat == 'less') {
        high = guessNum - 1;
      } else {
        print('something went wrong');
      }
      steps++;
    } else {
      print('something went wrong');
    }
  } while (true);
  return steps;
}
