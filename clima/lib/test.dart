import 'dart:io';

// async await test code
void main() {
  performTasks();
}

void performTasks() {
  task1();
  task3();
  task4();
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

Future<String> task2() async {
  String result;
  Duration duration = Duration(seconds: 3);
  await Future.delayed(duration, () {
    result = 'task 2 data';
    print('Task 2 complete');
  });
  print('meee');
  return result;
}

void task3() async {
  String result = 'task 3 data';
  String task2Data = await task2();
  print('Task 3 complete with $task2Data');
}

void task4() {
  String result = 'task 1 data';
  print('Task 4 complete');
}
