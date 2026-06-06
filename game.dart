import 'dart:io';
import 'dart:math';

void main() {
  print("""
------Wellcome to the Rock paper Scissors game------
------Rules-------
        1. Rock beats Scissors
        2. Scissors beats Paper
        3. Paper beats Rock
------- r = Rock, p = Paper, s = Scissors , q = Quit---------
""");
  var userwins = 0;
  var computerWins = 0;
  Random random = Random();
  while (true) {
    print("Current Score:");
    print("You wins $userwins times and computer wins $computerWins times");
    print('Enter your choice r = Rock, p = Paper, s = Scissors , q = Quit');
    stdout.write("Enter your choise now:");
    var userInPut = stdin.readLineSync();
    var choise = userInPut?.trim().toLowerCase();
    if (choise == null) {
      print("Please fill it now");
      continue;
    }

    switch (choise) {
      case "r":
        print("You chose r!");
        break;
      case 'p':
        print("You chose p!");
        break;
      case 's':
        print("You chose s!");
        break;
      case "q":
        break;
      default:
        print('Invalid choice. Please try again!');
        break;
    }
    if (choise == 'q') {
      print('Thanks for playing!');
      print('Made with ❤️ in Pakistan.')
      break;
    }
    if (choise == 'r' || choise == 'p' || choise == 's') {
      var choises = ['r', 'p', 's'];
      var computerchoise = choises[random.nextInt(3)];
      print("Computer chose $computerchoise");
      var tie = false;
      if (choise == computerchoise) {
        print("This is a tie");
        tie = true;
        continue;
      }
      if (tie == false) {
        if (choise == 'r' && computerchoise == 's' ||
            choise == 'p' && computerchoise == 'r' ||
            choise == 's' && computerchoise == 'p') {
          print("You win! ");
          userwins++;
        } else {
          print('Computer Wins');
          computerWins++;
        }
      }
    }
  }
}
