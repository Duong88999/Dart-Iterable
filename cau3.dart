//Create a program thats reads list of expenses amount using user input and print total.

import 'dart:io';

void main() {
  List<double> expenses = [];

  while (true) {
    stdout.write("Enter an expense amount (0 to quit): ");
    double expense = double.parse(stdin.readLineSync()!);
    if (expense == 0) {
      break;
    }
    expenses.add(expense);
  }

  double total = 0;
  for (double expense in expenses) {
    total += expense;
  }

  print("Total expenses: \${$total}");
}
