//Create a simple to-do application that allows user to add, remove, and view their task.

import 'dart:io';

void main() {
  final List<String> tasks = [];

  while (true) {
    print('Enter a command (add/remove/view/exit):');
    final String command = stdin.readLineSync()!.toLowerCase();

    if (command == 'add') {
      print('Enter a task:');
      final String task = stdin.readLineSync()!;
      tasks.add(task);
      print('Task added successfully!');
    } else if (command == 'remove') {
      if (tasks.isEmpty) {
        print('There are no tasks to remove.');
      } else {
        print('Enter the index of the task you want to remove:');
        final int index = int.parse(stdin.readLineSync()!);
        if (index < 0 || index >= tasks.length) {
          print('Invalid index!');
        } else {
          tasks.removeAt(index);
          print('Task removed successfully!');
        }
      }
    } else if (command == 'view') {
      if (tasks.isEmpty) {
        print('There are no tasks to view.');
      } else {
        print('Tasks:');
        for (int i = 0; i < tasks.length; i++) {
          print('$i: ${tasks[i]}');
        }
      }
    } else if (command == 'exit') {
      print('Goodbye!');
      break;
    } else {
      print('Invalid command!');
    }
  }
}
